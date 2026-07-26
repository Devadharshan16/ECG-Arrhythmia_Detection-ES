"""model_cnn.py: Defines the memory-constrained 1D-CNN architecture for the Lattice iCE40 FPGA."""

import torch
import torch.nn as nn
from torch.ao.quantization import QuantStub, DeQuantStub

class TinyECG_CNN(nn.Module):
    def __init__(self):
        super(TinyECG_CNN, self).__init__()
        # QuantStub converts floating point inputs to INT8 during quantization
        self.quant = QuantStub()
        
        # Layer 1: 1D Convolution
        # Input: (Batch, 1, 90) -> Output: (Batch, 4, 45)
        self.conv1 = nn.Conv1d(in_channels=1, out_channels=4, kernel_size=5, stride=2, padding=2)
        self.relu1 = nn.ReLU()
        
        # Layer 2: 1D Convolution
        # Input: (Batch, 4, 45) -> Output: (Batch, 8, 23)
        self.conv2 = nn.Conv1d(in_channels=4, out_channels=8, kernel_size=5, stride=2, padding=2)
        self.relu2 = nn.ReLU()
        
        # Flatten and Fully Connected Layer for binary decision
        self.flatten = nn.Flatten()
        # 8 channels * 23 length = 184 features
        self.fc = nn.Linear(184, 2) 
        
        # DeQuantStub converts INT8 back to floating point for loss calculation
        self.dequant = DeQuantStub()

    def forward(self, x):
        x = self.quant(x)
        x = self.conv1(x)
        x = self.relu1(x)
        x = self.conv2(x)
        x = self.relu2(x)
        x = self.flatten(x)
        x = self.fc(x)
        x = self.dequant(x)
        return x

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
    print(f"TinyECG_CNN Instantiated!")
    print(f"Total Parameters: {params}")
    print(f"Estimated INT8 Footprint: {mem:.2f} KB (Limit: < 15.0 KB)")
