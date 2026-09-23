// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2026.1 (64-bit)
// Tool Version Limit: 2026.06
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xtiny_ecg_inference.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTiny_ecg_inference_CfgInitialize(XTiny_ecg_inference *InstancePtr, XTiny_ecg_inference_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTiny_ecg_inference_Start(XTiny_ecg_inference *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTiny_ecg_inference_ReadReg(InstancePtr->Ctrl_BaseAddress, XTINY_ECG_INFERENCE_CTRL_ADDR_AP_CTRL) & 0x80;
    XTiny_ecg_inference_WriteReg(InstancePtr->Ctrl_BaseAddress, XTINY_ECG_INFERENCE_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTiny_ecg_inference_IsDone(XTiny_ecg_inference *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTiny_ecg_inference_ReadReg(InstancePtr->Ctrl_BaseAddress, XTINY_ECG_INFERENCE_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTiny_ecg_inference_IsIdle(XTiny_ecg_inference *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTiny_ecg_inference_ReadReg(InstancePtr->Ctrl_BaseAddress, XTINY_ECG_INFERENCE_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTiny_ecg_inference_IsReady(XTiny_ecg_inference *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTiny_ecg_inference_ReadReg(InstancePtr->Ctrl_BaseAddress, XTINY_ECG_INFERENCE_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTiny_ecg_inference_EnableAutoRestart(XTiny_ecg_inference *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTiny_ecg_inference_WriteReg(InstancePtr->Ctrl_BaseAddress, XTINY_ECG_INFERENCE_CTRL_ADDR_AP_CTRL, 0x80);
}

void XTiny_ecg_inference_DisableAutoRestart(XTiny_ecg_inference *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTiny_ecg_inference_WriteReg(InstancePtr->Ctrl_BaseAddress, XTINY_ECG_INFERENCE_CTRL_ADDR_AP_CTRL, 0);
}

void XTiny_ecg_inference_Set_input_ecg(XTiny_ecg_inference *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTiny_ecg_inference_WriteReg(InstancePtr->Control_BaseAddress, XTINY_ECG_INFERENCE_CONTROL_ADDR_INPUT_ECG_DATA, (u32)(Data));
    XTiny_ecg_inference_WriteReg(InstancePtr->Control_BaseAddress, XTINY_ECG_INFERENCE_CONTROL_ADDR_INPUT_ECG_DATA + 4, (u32)(Data >> 32));
}

u64 XTiny_ecg_inference_Get_input_ecg(XTiny_ecg_inference *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTiny_ecg_inference_ReadReg(InstancePtr->Control_BaseAddress, XTINY_ECG_INFERENCE_CONTROL_ADDR_INPUT_ECG_DATA);
    Data += (u64)XTiny_ecg_inference_ReadReg(InstancePtr->Control_BaseAddress, XTINY_ECG_INFERENCE_CONTROL_ADDR_INPUT_ECG_DATA + 4) << 32;
    return Data;
}

void XTiny_ecg_inference_Set_output_logits(XTiny_ecg_inference *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTiny_ecg_inference_WriteReg(InstancePtr->Control_BaseAddress, XTINY_ECG_INFERENCE_CONTROL_ADDR_OUTPUT_LOGITS_DATA, (u32)(Data));
    XTiny_ecg_inference_WriteReg(InstancePtr->Control_BaseAddress, XTINY_ECG_INFERENCE_CONTROL_ADDR_OUTPUT_LOGITS_DATA + 4, (u32)(Data >> 32));
}

u64 XTiny_ecg_inference_Get_output_logits(XTiny_ecg_inference *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTiny_ecg_inference_ReadReg(InstancePtr->Control_BaseAddress, XTINY_ECG_INFERENCE_CONTROL_ADDR_OUTPUT_LOGITS_DATA);
    Data += (u64)XTiny_ecg_inference_ReadReg(InstancePtr->Control_BaseAddress, XTINY_ECG_INFERENCE_CONTROL_ADDR_OUTPUT_LOGITS_DATA + 4) << 32;
    return Data;
}

void XTiny_ecg_inference_InterruptGlobalEnable(XTiny_ecg_inference *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTiny_ecg_inference_WriteReg(InstancePtr->Ctrl_BaseAddress, XTINY_ECG_INFERENCE_CTRL_ADDR_GIE, 1);
}

void XTiny_ecg_inference_InterruptGlobalDisable(XTiny_ecg_inference *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTiny_ecg_inference_WriteReg(InstancePtr->Ctrl_BaseAddress, XTINY_ECG_INFERENCE_CTRL_ADDR_GIE, 0);
}

void XTiny_ecg_inference_InterruptEnable(XTiny_ecg_inference *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTiny_ecg_inference_ReadReg(InstancePtr->Ctrl_BaseAddress, XTINY_ECG_INFERENCE_CTRL_ADDR_IER);
    XTiny_ecg_inference_WriteReg(InstancePtr->Ctrl_BaseAddress, XTINY_ECG_INFERENCE_CTRL_ADDR_IER, Register | Mask);
}

void XTiny_ecg_inference_InterruptDisable(XTiny_ecg_inference *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTiny_ecg_inference_ReadReg(InstancePtr->Ctrl_BaseAddress, XTINY_ECG_INFERENCE_CTRL_ADDR_IER);
    XTiny_ecg_inference_WriteReg(InstancePtr->Ctrl_BaseAddress, XTINY_ECG_INFERENCE_CTRL_ADDR_IER, Register & (~Mask));
}

void XTiny_ecg_inference_InterruptClear(XTiny_ecg_inference *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTiny_ecg_inference_WriteReg(InstancePtr->Ctrl_BaseAddress, XTINY_ECG_INFERENCE_CTRL_ADDR_ISR, Mask);
}

u32 XTiny_ecg_inference_InterruptGetEnabled(XTiny_ecg_inference *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTiny_ecg_inference_ReadReg(InstancePtr->Ctrl_BaseAddress, XTINY_ECG_INFERENCE_CTRL_ADDR_IER);
}

u32 XTiny_ecg_inference_InterruptGetStatus(XTiny_ecg_inference *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTiny_ecg_inference_ReadReg(InstancePtr->Ctrl_BaseAddress, XTINY_ECG_INFERENCE_CTRL_ADDR_ISR);
}

