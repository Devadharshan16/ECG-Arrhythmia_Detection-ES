// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2026.1 (64-bit)
// Tool Version Limit: 2026.06
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xtiny_ecg_inference.h"

extern XTiny_ecg_inference_Config XTiny_ecg_inference_ConfigTable[];

#ifdef SDT
XTiny_ecg_inference_Config *XTiny_ecg_inference_LookupConfig(UINTPTR BaseAddress) {
	XTiny_ecg_inference_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XTiny_ecg_inference_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XTiny_ecg_inference_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XTiny_ecg_inference_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTiny_ecg_inference_Initialize(XTiny_ecg_inference *InstancePtr, UINTPTR BaseAddress) {
	XTiny_ecg_inference_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTiny_ecg_inference_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTiny_ecg_inference_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XTiny_ecg_inference_Config *XTiny_ecg_inference_LookupConfig(u16 DeviceId) {
	XTiny_ecg_inference_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTINY_ECG_INFERENCE_NUM_INSTANCES; Index++) {
		if (XTiny_ecg_inference_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTiny_ecg_inference_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTiny_ecg_inference_Initialize(XTiny_ecg_inference *InstancePtr, u16 DeviceId) {
	XTiny_ecg_inference_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTiny_ecg_inference_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTiny_ecg_inference_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

