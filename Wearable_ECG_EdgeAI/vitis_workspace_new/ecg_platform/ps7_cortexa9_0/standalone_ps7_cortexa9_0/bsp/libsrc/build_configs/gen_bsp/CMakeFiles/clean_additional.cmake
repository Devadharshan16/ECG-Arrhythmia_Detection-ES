# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "D:\\ECG-Embedded_System\\Wearable_ECG_EdgeAI\\vitis_workspace_new\\ecg_platform\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\sleep.h"
  "D:\\ECG-Embedded_System\\Wearable_ECG_EdgeAI\\vitis_workspace_new\\ecg_platform\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\xiltimer.h"
  "D:\\ECG-Embedded_System\\Wearable_ECG_EdgeAI\\vitis_workspace_new\\ecg_platform\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\xtimer_config.h"
  "D:\\ECG-Embedded_System\\Wearable_ECG_EdgeAI\\vitis_workspace_new\\ecg_platform\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
