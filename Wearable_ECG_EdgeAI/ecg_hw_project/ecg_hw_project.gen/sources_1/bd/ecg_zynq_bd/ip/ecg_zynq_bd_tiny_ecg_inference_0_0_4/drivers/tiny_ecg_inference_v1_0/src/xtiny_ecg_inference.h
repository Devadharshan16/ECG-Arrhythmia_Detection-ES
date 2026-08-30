// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2026.1 (64-bit)
// Tool Version Limit: 2026.06
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XTINY_ECG_INFERENCE_H
#define XTINY_ECG_INFERENCE_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xtiny_ecg_inference_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
    u64 Ctrl_BaseAddress;
} XTiny_ecg_inference_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XTiny_ecg_inference;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XTiny_ecg_inference_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XTiny_ecg_inference_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XTiny_ecg_inference_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XTiny_ecg_inference_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XTiny_ecg_inference_Initialize(XTiny_ecg_inference *InstancePtr, UINTPTR BaseAddress);
XTiny_ecg_inference_Config* XTiny_ecg_inference_LookupConfig(UINTPTR BaseAddress);
#else
int XTiny_ecg_inference_Initialize(XTiny_ecg_inference *InstancePtr, u16 DeviceId);
XTiny_ecg_inference_Config* XTiny_ecg_inference_LookupConfig(u16 DeviceId);
#endif
int XTiny_ecg_inference_CfgInitialize(XTiny_ecg_inference *InstancePtr, XTiny_ecg_inference_Config *ConfigPtr);
#else
int XTiny_ecg_inference_Initialize(XTiny_ecg_inference *InstancePtr, const char* InstanceName);
int XTiny_ecg_inference_Release(XTiny_ecg_inference *InstancePtr);
#endif

void XTiny_ecg_inference_Start(XTiny_ecg_inference *InstancePtr);
u32 XTiny_ecg_inference_IsDone(XTiny_ecg_inference *InstancePtr);
u32 XTiny_ecg_inference_IsIdle(XTiny_ecg_inference *InstancePtr);
u32 XTiny_ecg_inference_IsReady(XTiny_ecg_inference *InstancePtr);
void XTiny_ecg_inference_EnableAutoRestart(XTiny_ecg_inference *InstancePtr);
void XTiny_ecg_inference_DisableAutoRestart(XTiny_ecg_inference *InstancePtr);

void XTiny_ecg_inference_Set_input_ecg(XTiny_ecg_inference *InstancePtr, u64 Data);
u64 XTiny_ecg_inference_Get_input_ecg(XTiny_ecg_inference *InstancePtr);
void XTiny_ecg_inference_Set_output_logits(XTiny_ecg_inference *InstancePtr, u64 Data);
u64 XTiny_ecg_inference_Get_output_logits(XTiny_ecg_inference *InstancePtr);

void XTiny_ecg_inference_InterruptGlobalEnable(XTiny_ecg_inference *InstancePtr);
void XTiny_ecg_inference_InterruptGlobalDisable(XTiny_ecg_inference *InstancePtr);
void XTiny_ecg_inference_InterruptEnable(XTiny_ecg_inference *InstancePtr, u32 Mask);
void XTiny_ecg_inference_InterruptDisable(XTiny_ecg_inference *InstancePtr, u32 Mask);
void XTiny_ecg_inference_InterruptClear(XTiny_ecg_inference *InstancePtr, u32 Mask);
u32 XTiny_ecg_inference_InterruptGetEnabled(XTiny_ecg_inference *InstancePtr);
u32 XTiny_ecg_inference_InterruptGetStatus(XTiny_ecg_inference *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
