#!/bin/bash

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/vishal/2026.1/Vitis/bin:/home/vishal/2026.1/Vivado/ids_lite/ISE/bin/lin64:/home/vishal/2026.1/Vivado/bin
else
  PATH=/home/vishal/2026.1/Vitis/bin:/home/vishal/2026.1/Vivado/ids_lite/ISE/bin/lin64:/home/vishal/2026.1/Vivado/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/vishal/vishal_dev/EB_caps/ECG-Arrhythmia_Detection-ES/Wearable_ECG_EdgeAI/ecg_hw_project/ecg_hw_project.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log ecg_zynq_bd_wrapper.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source ecg_zynq_bd_wrapper.tcl
