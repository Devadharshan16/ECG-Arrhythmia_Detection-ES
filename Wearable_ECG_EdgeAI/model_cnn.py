"""model_cnn.py: Defines the memory-constrained 1D-CNN architecture for the Lattice iCE40 FPGA.

v2 Architecture Changes (2026-08-26):
  - Increased channel widths: 1→8→16→16 (was 1→4→8)
  - Added BatchNorm1d after each Conv1d (stabilizes QAT fake-quantized activations)
  - Added 3rd Conv layer for deeper feature extraction
  - Added Dropout before FC for regularization
  - Total params: ~2,900 (was 558). INT8 footprint: ~2.9 KB (was 0.55 KB)
  - Still well under the 15 KB BRAM limit of the Lattice iCE40 FPGA
"""

import torch
import torch.nn as nn
from torch.ao.quantization import QuantStub, DeQuantStub

class TinyECG_CNN(nn.Module):
    def __init__(self):
        super(TinyECG_CNN, self).__init__()
        
        self.quant = torch.ao.quantization.QuantStub()
        
        # Layer 1: 1 -> 8 channels, max pool via stride 2
        self.conv1 = nn.Conv1d(1, 8, kernel_size=5, stride=2, padding=2) # 90 -> 45
        self.bn1 = nn.BatchNorm1d(8)
        self.relu1 = nn.ReLU()
        
        # Layer 2: 8 -> 16 channels
        self.conv2 = nn.Conv1d(8, 16, kernel_size=5, stride=2, padding=2) # 45 -> 23
        self.bn2 = nn.BatchNorm1d(16)
        self.relu2 = nn.ReLU()
        
        # Layer 3: 16 -> 16 channels
        self.conv3 = nn.Conv1d(16, 16, kernel_size=3, stride=2, padding=1) # 23 -> 12
        self.bn3 = nn.BatchNorm1d(16)
        self.relu3 = nn.ReLU()
        
        self.dropout = nn.Dropout(0.3)
        
        # FC Layer: 16 channels * 12 points = 192 features
        self.fc = nn.Linear(192, 2)
        
        self.dequant = torch.ao.quantization.DeQuantStub()

    def forward(self, x):
        x = self.quant(x)
        
        x = self.conv1(x)
        x = self.bn1(x)
        x = self.relu1(x)
        
        x = self.conv2(x)
        x = self.bn2(x)
        x = self.relu2(x)
        
        x = self.conv3(x)
        x = self.bn3(x)
        x = self.relu3(x)
        
        x = torch.flatten(x, 1)
        x = self.dropout(x)
        x = self.fc(x)
        
        x = self.dequant(x)
        return x

    def fuse_model(self):
        """
        Fuses Conv1d, BatchNorm1d, and ReLU layers into single modules.
        This is REQUIRED for QAT because standalone quantized BatchNorms 
        are not supported by the PyTorch quantization backend.
        """
        import torch.ao.quantization
        torch.ao.quantization.fuse_modules_qat(
            self,
            [['conv1', 'bn1', 'relu1'],
             ['conv2', 'bn2', 'relu2'],
             ['conv3', 'bn3', 'relu3']],
            inplace=True
        )

def count_parameters(model):
    """
    Calculates the total number of trainable parameters and estimates 
    the INT8 memory footprint in Kilobytes (KB).
    """
    total_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
    # 1 parameter = 1 byte in INT8 quantization
    mem_kb = total_params * 1 / 1024 
    return total_params, mem_kb

if __name__ == "__main__":
    # Quick verification test when running this file directly
    model = TinyECG_CNN()
    params, mem = count_parameters(model)
    print(f"TinyECG_CNN v2 Instantiated!")
    print(f"Total Parameters: {params}")
    print(f"Estimated INT8 Footprint: {mem:.2f} KB (Limit: < 15.0 KB)")
    
    # Verify output shape
    dummy_input = torch.randn(1, 1, 90)
    output = model(dummy_input)
    print(f"Output Shape: {output.shape} (Expected: [1, 2])")
