# This script segment is generated automatically by AutoPilot

set name tiny_ecg_inference_mul_19s_30ns_49_2_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name tiny_ecg_inference_mul_9s_8s_17_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_mac_muladd_9s_8s_17s_17_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_conv1_weight_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_conv1_multiplier_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_conv1_shift_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_61_2_conv1_bias_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name buffer_c1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1 \
    op interface \
    ports { buffer_c1_address0 { O 4 vector } buffer_c1_ce0 { O 1 bit } buffer_c1_we0 { O 1 bit } buffer_c1_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 22 \
    name buffer_c1_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_1 \
    op interface \
    ports { buffer_c1_1_address0 { O 4 vector } buffer_c1_1_ce0 { O 1 bit } buffer_c1_1_we0 { O 1 bit } buffer_c1_1_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 23 \
    name buffer_c1_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_2 \
    op interface \
    ports { buffer_c1_2_address0 { O 4 vector } buffer_c1_2_ce0 { O 1 bit } buffer_c1_2_we0 { O 1 bit } buffer_c1_2_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 24 \
    name buffer_c1_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_3 \
    op interface \
    ports { buffer_c1_3_address0 { O 4 vector } buffer_c1_3_ce0 { O 1 bit } buffer_c1_3_we0 { O 1 bit } buffer_c1_3_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 25 \
    name buffer_c1_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_4 \
    op interface \
    ports { buffer_c1_4_address0 { O 4 vector } buffer_c1_4_ce0 { O 1 bit } buffer_c1_4_we0 { O 1 bit } buffer_c1_4_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 26 \
    name buffer_c1_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_5 \
    op interface \
    ports { buffer_c1_5_address0 { O 4 vector } buffer_c1_5_ce0 { O 1 bit } buffer_c1_5_we0 { O 1 bit } buffer_c1_5_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name buffer_c1_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_6 \
    op interface \
    ports { buffer_c1_6_address0 { O 4 vector } buffer_c1_6_ce0 { O 1 bit } buffer_c1_6_we0 { O 1 bit } buffer_c1_6_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 28 \
    name buffer_c1_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_7 \
    op interface \
    ports { buffer_c1_7_address0 { O 4 vector } buffer_c1_7_ce0 { O 1 bit } buffer_c1_7_we0 { O 1 bit } buffer_c1_7_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 29 \
    name buffer_c1_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_8 \
    op interface \
    ports { buffer_c1_8_address0 { O 4 vector } buffer_c1_8_ce0 { O 1 bit } buffer_c1_8_we0 { O 1 bit } buffer_c1_8_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 30 \
    name buffer_c1_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_9 \
    op interface \
    ports { buffer_c1_9_address0 { O 4 vector } buffer_c1_9_ce0 { O 1 bit } buffer_c1_9_we0 { O 1 bit } buffer_c1_9_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 31 \
    name buffer_c1_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_10 \
    op interface \
    ports { buffer_c1_10_address0 { O 4 vector } buffer_c1_10_ce0 { O 1 bit } buffer_c1_10_we0 { O 1 bit } buffer_c1_10_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 32 \
    name buffer_c1_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_11 \
    op interface \
    ports { buffer_c1_11_address0 { O 4 vector } buffer_c1_11_ce0 { O 1 bit } buffer_c1_11_we0 { O 1 bit } buffer_c1_11_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 33 \
    name buffer_c1_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_12 \
    op interface \
    ports { buffer_c1_12_address0 { O 4 vector } buffer_c1_12_ce0 { O 1 bit } buffer_c1_12_we0 { O 1 bit } buffer_c1_12_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 34 \
    name buffer_c1_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_13 \
    op interface \
    ports { buffer_c1_13_address0 { O 4 vector } buffer_c1_13_ce0 { O 1 bit } buffer_c1_13_we0 { O 1 bit } buffer_c1_13_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 35 \
    name buffer_c1_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_14 \
    op interface \
    ports { buffer_c1_14_address0 { O 4 vector } buffer_c1_14_ce0 { O 1 bit } buffer_c1_14_we0 { O 1 bit } buffer_c1_14_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 36 \
    name buffer_c1_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_15 \
    op interface \
    ports { buffer_c1_15_address0 { O 4 vector } buffer_c1_15_ce0 { O 1 bit } buffer_c1_15_we0 { O 1 bit } buffer_c1_15_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 37 \
    name buffer_c1_16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_16 \
    op interface \
    ports { buffer_c1_16_address0 { O 4 vector } buffer_c1_16_ce0 { O 1 bit } buffer_c1_16_we0 { O 1 bit } buffer_c1_16_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name buffer_c1_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_17 \
    op interface \
    ports { buffer_c1_17_address0 { O 4 vector } buffer_c1_17_ce0 { O 1 bit } buffer_c1_17_we0 { O 1 bit } buffer_c1_17_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 39 \
    name buffer_c1_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_18 \
    op interface \
    ports { buffer_c1_18_address0 { O 4 vector } buffer_c1_18_ce0 { O 1 bit } buffer_c1_18_we0 { O 1 bit } buffer_c1_18_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 40 \
    name buffer_c1_19 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_19 \
    op interface \
    ports { buffer_c1_19_address0 { O 4 vector } buffer_c1_19_ce0 { O 1 bit } buffer_c1_19_we0 { O 1 bit } buffer_c1_19_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 41 \
    name buffer_c1_20 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_20 \
    op interface \
    ports { buffer_c1_20_address0 { O 4 vector } buffer_c1_20_ce0 { O 1 bit } buffer_c1_20_we0 { O 1 bit } buffer_c1_20_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 42 \
    name buffer_c1_21 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_21 \
    op interface \
    ports { buffer_c1_21_address0 { O 4 vector } buffer_c1_21_ce0 { O 1 bit } buffer_c1_21_we0 { O 1 bit } buffer_c1_21_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 43 \
    name buffer_c1_22 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_22 \
    op interface \
    ports { buffer_c1_22_address0 { O 4 vector } buffer_c1_22_ce0 { O 1 bit } buffer_c1_22_we0 { O 1 bit } buffer_c1_22_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 44 \
    name buffer_c1_23 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_23 \
    op interface \
    ports { buffer_c1_23_address0 { O 4 vector } buffer_c1_23_ce0 { O 1 bit } buffer_c1_23_we0 { O 1 bit } buffer_c1_23_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 45 \
    name buffer_c1_24 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_24 \
    op interface \
    ports { buffer_c1_24_address0 { O 4 vector } buffer_c1_24_ce0 { O 1 bit } buffer_c1_24_we0 { O 1 bit } buffer_c1_24_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 46 \
    name buffer_c1_25 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_25 \
    op interface \
    ports { buffer_c1_25_address0 { O 4 vector } buffer_c1_25_ce0 { O 1 bit } buffer_c1_25_we0 { O 1 bit } buffer_c1_25_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 47 \
    name buffer_c1_26 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_26 \
    op interface \
    ports { buffer_c1_26_address0 { O 4 vector } buffer_c1_26_ce0 { O 1 bit } buffer_c1_26_we0 { O 1 bit } buffer_c1_26_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
    name buffer_c1_27 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_27 \
    op interface \
    ports { buffer_c1_27_address0 { O 4 vector } buffer_c1_27_ce0 { O 1 bit } buffer_c1_27_we0 { O 1 bit } buffer_c1_27_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 49 \
    name buffer_c1_28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_28 \
    op interface \
    ports { buffer_c1_28_address0 { O 4 vector } buffer_c1_28_ce0 { O 1 bit } buffer_c1_28_we0 { O 1 bit } buffer_c1_28_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 50 \
    name buffer_c1_29 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_29 \
    op interface \
    ports { buffer_c1_29_address0 { O 4 vector } buffer_c1_29_ce0 { O 1 bit } buffer_c1_29_we0 { O 1 bit } buffer_c1_29_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 51 \
    name buffer_c1_30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_30 \
    op interface \
    ports { buffer_c1_30_address0 { O 4 vector } buffer_c1_30_ce0 { O 1 bit } buffer_c1_30_we0 { O 1 bit } buffer_c1_30_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 52 \
    name buffer_c1_31 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_31 \
    op interface \
    ports { buffer_c1_31_address0 { O 4 vector } buffer_c1_31_ce0 { O 1 bit } buffer_c1_31_we0 { O 1 bit } buffer_c1_31_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 53 \
    name buffer_c1_32 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_32 \
    op interface \
    ports { buffer_c1_32_address0 { O 4 vector } buffer_c1_32_ce0 { O 1 bit } buffer_c1_32_we0 { O 1 bit } buffer_c1_32_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 54 \
    name buffer_c1_33 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_33 \
    op interface \
    ports { buffer_c1_33_address0 { O 4 vector } buffer_c1_33_ce0 { O 1 bit } buffer_c1_33_we0 { O 1 bit } buffer_c1_33_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 55 \
    name buffer_c1_34 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_34 \
    op interface \
    ports { buffer_c1_34_address0 { O 4 vector } buffer_c1_34_ce0 { O 1 bit } buffer_c1_34_we0 { O 1 bit } buffer_c1_34_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 56 \
    name buffer_c1_35 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_35 \
    op interface \
    ports { buffer_c1_35_address0 { O 4 vector } buffer_c1_35_ce0 { O 1 bit } buffer_c1_35_we0 { O 1 bit } buffer_c1_35_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 57 \
    name buffer_c1_36 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_36 \
    op interface \
    ports { buffer_c1_36_address0 { O 4 vector } buffer_c1_36_ce0 { O 1 bit } buffer_c1_36_we0 { O 1 bit } buffer_c1_36_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 58 \
    name buffer_c1_37 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_37 \
    op interface \
    ports { buffer_c1_37_address0 { O 4 vector } buffer_c1_37_ce0 { O 1 bit } buffer_c1_37_we0 { O 1 bit } buffer_c1_37_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 59 \
    name buffer_c1_38 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_38 \
    op interface \
    ports { buffer_c1_38_address0 { O 4 vector } buffer_c1_38_ce0 { O 1 bit } buffer_c1_38_we0 { O 1 bit } buffer_c1_38_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 60 \
    name buffer_c1_39 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c1_39 \
    op interface \
    ports { buffer_c1_39_address0 { O 4 vector } buffer_c1_39_ce0 { O 1 bit } buffer_c1_39_we0 { O 1 bit } buffer_c1_39_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_39'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name add_ln66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln66 \
    op interface \
    ports { add_ln66 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name add_ln66_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln66_1 \
    op interface \
    ports { add_ln66_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name add_ln66_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln66_2 \
    op interface \
    ports { add_ln66_2 { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name sext_ln77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln77 \
    op interface \
    ports { sext_ln77 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name sext_ln71_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln71_1 \
    op interface \
    ports { sext_ln71_1 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name zext_ln60_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln60_1 \
    op interface \
    ports { zext_ln60_1 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name sext_ln71_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln71_3 \
    op interface \
    ports { sext_ln71_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name sext_ln71_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln71_4 \
    op interface \
    ports { sext_ln71_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name sext_ln71_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln71_5 \
    op interface \
    ports { sext_ln71_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName tiny_ecg_inference_flow_control_loop_pipe_sequential_init_U
set CompName tiny_ecg_inference_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix tiny_ecg_inference_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


