"""quantize_model.py: Applies Post-Training Quantization (PTQ) to convert FP32 weights to INT8."""

import os
import numpy as np
import torch
from torch.ao.quantization import get_default_qconfig, prepare, convert
from model_cnn import TinyECG_CNN

def apply_ptq():
    print("======================================================")
    print("--- PHASE 1, TASK 2: POST-TRAINING QUANTIZATION ---")
    print("======================================================")

    # 1. Load the pruned FP32 model
    model = TinyECG_CNN()
    model_path = "saved_models/tiny_ecg_pruned.pth"
    if not os.path.exists(model_path):
        print(f"[ERROR] Could not find {model_path}. Run train_model.py first.")
        return

    # Load weights and set to evaluation mode (Crucial for PTQ)
    model.load_state_dict(torch.load(model_path))
    model.eval() 
    print("-> Pruned FP32 model loaded successfully.")

    # 2. Set quantization backend dynamically
    supported_engines = torch.backends.quantized.supported_engines
    if not supported_engines:
        print("[CRITICAL ERROR] Your PyTorch installation does not support ANY quantization backends.")
        return
    
    # Automatically grab the first supported backend (usually 'x86', 'fbgemm', or 'qnnpack')
    backend = supported_engines[0]
    print(f"-> Natively supported quantization backend detected: '{backend}'")
    
    torch.backends.quantized.engine = backend
    model.qconfig = get_default_qconfig(backend)

    # 3. Prepare the model (inserts calibration observers)
    prepare(model, inplace=True)
    print("-> Model prepared with Quantization Observers.")

    # 4. Calibrate the model with a subset of real data
    # We don't train here; we just flow data through so observers calculate min/max ranges
    tensor_path = "processed_tensors/X_data.npy"
    print(f"-> Loading calibration data from '{tensor_path}'...")
    X_data = np.load(tensor_path)
    # 1000 samples is plenty for the observers to establish accurate numeric boundaries
    X_tensor = torch.tensor(X_data[:1000], dtype=torch.float32) 

    print("-> Running calibration forward pass...")
    with torch.no_grad():
        model(X_tensor)

    # 5. Convert the model to INT8
    convert(model, inplace=True)
    print("\n[Quantization Complete]")
    print("-> Model successfully converted to 8-bit integers (INT8).")

    # 6. Save the quantized model
    output_dir = "saved_models"
    output_path = os.path.join(output_dir, "tiny_ecg_quantized.pth")
    torch.save(model.state_dict(), output_path)
    
    print(f"SUCCESS: Quantized INT8 model saved to '{output_path}'")
    print("======================================================")

if __name__ == "__main__":
    apply_ptq()
