### **What This Script Does**

Your current model is sitting in your `saved_models` folder as 32-bit floating-point numbers (FP32). This script will:

1. Load that pruned `.pth` model.
    
2. Inject "Observers" into the layers using PyTorch's `fbgemm` quantization backend.
    
3. Run 1,000 real ECG heartbeat samples through the network (Calibration). The observers will watch the data flow to determine the exact minimum and maximum voltage ranges.
    
4. Compress and lock all the weights and activations into 8-bit integers (INT8: -128 to +127) based on those observed ranges.