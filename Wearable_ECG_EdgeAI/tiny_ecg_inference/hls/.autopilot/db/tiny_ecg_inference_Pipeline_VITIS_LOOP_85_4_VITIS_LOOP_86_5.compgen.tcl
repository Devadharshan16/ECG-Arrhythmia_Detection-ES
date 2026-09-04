# This script segment is generated automatically by AutoPilot

set name tiny_ecg_inference_mul_64ns_66ns_129_5_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 4 ALLOW_PRAGMA 1
}


set name tiny_ecg_inference_urem_5ns_3ns_2_9_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 8 ALLOW_PRAGMA 1
}


set name tiny_ecg_inference_urem_5ns_4ns_3_9_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 8 ALLOW_PRAGMA 1
}


set name tiny_ecg_inference_mul_5ns_7ns_11_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name tiny_ecg_inference_mul_6ns_8ns_13_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_sparsemux_11_3_7_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_sparsemux_11_3_7_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_sparsemux_11_3_7_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_sparsemux_11_3_7_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_sparsemux_11_3_7_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


set name tiny_ecg_inference_mul_7ns_8s_15_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name tiny_ecg_inference_mul_8s_7ns_15_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_mac_muladd_8s_7ns_15s_16_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_mac_muladd_8s_7ns_16s_17_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_conv2_bias_ROM_AUbkb BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighcud BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighdEe BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weigheOg BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighfYi BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighg8j BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighhbi BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighibs BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighjbC BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighkbM BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighlbW BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighmb6 BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighncg BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighocq BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighpcA BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighqcK BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighrcU BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighsc4 BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weightde BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighudo BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_p_ZL12conv2_weighvdy BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_conv2_multiplier_wdI BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler tiny_ecg_inference_tiny_ecg_inference_Pipeline_VITIS_LOOP_85_4_VITIS_LOOP_86_5_conv2_shift_ROM_AxdS BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 190 \
    name buffer_c1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1 \
    op interface \
    ports { buffer_c1_address0 { O 4 vector } buffer_c1_ce0 { O 1 bit } buffer_c1_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 191 \
    name buffer_c1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_1 \
    op interface \
    ports { buffer_c1_1_address0 { O 4 vector } buffer_c1_1_ce0 { O 1 bit } buffer_c1_1_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 192 \
    name buffer_c1_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_2 \
    op interface \
    ports { buffer_c1_2_address0 { O 4 vector } buffer_c1_2_ce0 { O 1 bit } buffer_c1_2_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 193 \
    name buffer_c1_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_3 \
    op interface \
    ports { buffer_c1_3_address0 { O 4 vector } buffer_c1_3_ce0 { O 1 bit } buffer_c1_3_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 194 \
    name buffer_c1_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_4 \
    op interface \
    ports { buffer_c1_4_address0 { O 4 vector } buffer_c1_4_ce0 { O 1 bit } buffer_c1_4_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 195 \
    name buffer_c1_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_5 \
    op interface \
    ports { buffer_c1_5_address0 { O 4 vector } buffer_c1_5_ce0 { O 1 bit } buffer_c1_5_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 196 \
    name buffer_c1_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_6 \
    op interface \
    ports { buffer_c1_6_address0 { O 4 vector } buffer_c1_6_ce0 { O 1 bit } buffer_c1_6_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 197 \
    name buffer_c1_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_7 \
    op interface \
    ports { buffer_c1_7_address0 { O 4 vector } buffer_c1_7_ce0 { O 1 bit } buffer_c1_7_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 198 \
    name buffer_c1_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_8 \
    op interface \
    ports { buffer_c1_8_address0 { O 4 vector } buffer_c1_8_ce0 { O 1 bit } buffer_c1_8_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 199 \
    name buffer_c1_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_9 \
    op interface \
    ports { buffer_c1_9_address0 { O 4 vector } buffer_c1_9_ce0 { O 1 bit } buffer_c1_9_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 200 \
    name buffer_c1_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_10 \
    op interface \
    ports { buffer_c1_10_address0 { O 4 vector } buffer_c1_10_ce0 { O 1 bit } buffer_c1_10_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 201 \
    name buffer_c1_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_11 \
    op interface \
    ports { buffer_c1_11_address0 { O 4 vector } buffer_c1_11_ce0 { O 1 bit } buffer_c1_11_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 202 \
    name buffer_c1_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_12 \
    op interface \
    ports { buffer_c1_12_address0 { O 4 vector } buffer_c1_12_ce0 { O 1 bit } buffer_c1_12_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 203 \
    name buffer_c1_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_13 \
    op interface \
    ports { buffer_c1_13_address0 { O 4 vector } buffer_c1_13_ce0 { O 1 bit } buffer_c1_13_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 204 \
    name buffer_c1_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_14 \
    op interface \
    ports { buffer_c1_14_address0 { O 4 vector } buffer_c1_14_ce0 { O 1 bit } buffer_c1_14_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 205 \
    name buffer_c1_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_15 \
    op interface \
    ports { buffer_c1_15_address0 { O 4 vector } buffer_c1_15_ce0 { O 1 bit } buffer_c1_15_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 206 \
    name buffer_c1_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_16 \
    op interface \
    ports { buffer_c1_16_address0 { O 4 vector } buffer_c1_16_ce0 { O 1 bit } buffer_c1_16_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 207 \
    name buffer_c1_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_17 \
    op interface \
    ports { buffer_c1_17_address0 { O 4 vector } buffer_c1_17_ce0 { O 1 bit } buffer_c1_17_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 208 \
    name buffer_c1_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_18 \
    op interface \
    ports { buffer_c1_18_address0 { O 4 vector } buffer_c1_18_ce0 { O 1 bit } buffer_c1_18_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 209 \
    name buffer_c1_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_19 \
    op interface \
    ports { buffer_c1_19_address0 { O 4 vector } buffer_c1_19_ce0 { O 1 bit } buffer_c1_19_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 210 \
    name buffer_c1_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_20 \
    op interface \
    ports { buffer_c1_20_address0 { O 4 vector } buffer_c1_20_ce0 { O 1 bit } buffer_c1_20_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 211 \
    name buffer_c1_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_21 \
    op interface \
    ports { buffer_c1_21_address0 { O 4 vector } buffer_c1_21_ce0 { O 1 bit } buffer_c1_21_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 212 \
    name buffer_c1_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_22 \
    op interface \
    ports { buffer_c1_22_address0 { O 4 vector } buffer_c1_22_ce0 { O 1 bit } buffer_c1_22_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 213 \
    name buffer_c1_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_23 \
    op interface \
    ports { buffer_c1_23_address0 { O 4 vector } buffer_c1_23_ce0 { O 1 bit } buffer_c1_23_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 214 \
    name buffer_c1_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_24 \
    op interface \
    ports { buffer_c1_24_address0 { O 4 vector } buffer_c1_24_ce0 { O 1 bit } buffer_c1_24_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 215 \
    name buffer_c1_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_25 \
    op interface \
    ports { buffer_c1_25_address0 { O 4 vector } buffer_c1_25_ce0 { O 1 bit } buffer_c1_25_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 216 \
    name buffer_c1_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_26 \
    op interface \
    ports { buffer_c1_26_address0 { O 4 vector } buffer_c1_26_ce0 { O 1 bit } buffer_c1_26_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 217 \
    name buffer_c1_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_27 \
    op interface \
    ports { buffer_c1_27_address0 { O 4 vector } buffer_c1_27_ce0 { O 1 bit } buffer_c1_27_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 218 \
    name buffer_c1_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_28 \
    op interface \
    ports { buffer_c1_28_address0 { O 4 vector } buffer_c1_28_ce0 { O 1 bit } buffer_c1_28_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 219 \
    name buffer_c1_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_29 \
    op interface \
    ports { buffer_c1_29_address0 { O 4 vector } buffer_c1_29_ce0 { O 1 bit } buffer_c1_29_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 220 \
    name buffer_c1_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_30 \
    op interface \
    ports { buffer_c1_30_address0 { O 4 vector } buffer_c1_30_ce0 { O 1 bit } buffer_c1_30_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 221 \
    name buffer_c1_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_31 \
    op interface \
    ports { buffer_c1_31_address0 { O 4 vector } buffer_c1_31_ce0 { O 1 bit } buffer_c1_31_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 222 \
    name buffer_c1_32 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_32 \
    op interface \
    ports { buffer_c1_32_address0 { O 4 vector } buffer_c1_32_ce0 { O 1 bit } buffer_c1_32_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 223 \
    name buffer_c1_33 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_33 \
    op interface \
    ports { buffer_c1_33_address0 { O 4 vector } buffer_c1_33_ce0 { O 1 bit } buffer_c1_33_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 224 \
    name buffer_c1_34 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_34 \
    op interface \
    ports { buffer_c1_34_address0 { O 4 vector } buffer_c1_34_ce0 { O 1 bit } buffer_c1_34_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 225 \
    name buffer_c1_35 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_35 \
    op interface \
    ports { buffer_c1_35_address0 { O 4 vector } buffer_c1_35_ce0 { O 1 bit } buffer_c1_35_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 226 \
    name buffer_c1_36 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_36 \
    op interface \
    ports { buffer_c1_36_address0 { O 4 vector } buffer_c1_36_ce0 { O 1 bit } buffer_c1_36_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 227 \
    name buffer_c1_37 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_37 \
    op interface \
    ports { buffer_c1_37_address0 { O 4 vector } buffer_c1_37_ce0 { O 1 bit } buffer_c1_37_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 228 \
    name buffer_c1_38 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_38 \
    op interface \
    ports { buffer_c1_38_address0 { O 4 vector } buffer_c1_38_ce0 { O 1 bit } buffer_c1_38_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 229 \
    name buffer_c1_39 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_c1_39 \
    op interface \
    ports { buffer_c1_39_address0 { O 4 vector } buffer_c1_39_ce0 { O 1 bit } buffer_c1_39_q0 { I 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c1_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 230 \
    name buffer_c2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2 \
    op interface \
    ports { buffer_c2_address0 { O 3 vector } buffer_c2_ce0 { O 1 bit } buffer_c2_we0 { O 1 bit } buffer_c2_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 231 \
    name buffer_c2_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_1 \
    op interface \
    ports { buffer_c2_1_address0 { O 3 vector } buffer_c2_1_ce0 { O 1 bit } buffer_c2_1_we0 { O 1 bit } buffer_c2_1_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 232 \
    name buffer_c2_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_2 \
    op interface \
    ports { buffer_c2_2_address0 { O 3 vector } buffer_c2_2_ce0 { O 1 bit } buffer_c2_2_we0 { O 1 bit } buffer_c2_2_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 233 \
    name buffer_c2_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_3 \
    op interface \
    ports { buffer_c2_3_address0 { O 3 vector } buffer_c2_3_ce0 { O 1 bit } buffer_c2_3_we0 { O 1 bit } buffer_c2_3_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 234 \
    name buffer_c2_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_4 \
    op interface \
    ports { buffer_c2_4_address0 { O 3 vector } buffer_c2_4_ce0 { O 1 bit } buffer_c2_4_we0 { O 1 bit } buffer_c2_4_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 235 \
    name buffer_c2_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_5 \
    op interface \
    ports { buffer_c2_5_address0 { O 3 vector } buffer_c2_5_ce0 { O 1 bit } buffer_c2_5_we0 { O 1 bit } buffer_c2_5_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 236 \
    name buffer_c2_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_6 \
    op interface \
    ports { buffer_c2_6_address0 { O 3 vector } buffer_c2_6_ce0 { O 1 bit } buffer_c2_6_we0 { O 1 bit } buffer_c2_6_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 237 \
    name buffer_c2_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_7 \
    op interface \
    ports { buffer_c2_7_address0 { O 3 vector } buffer_c2_7_ce0 { O 1 bit } buffer_c2_7_we0 { O 1 bit } buffer_c2_7_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 238 \
    name buffer_c2_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_8 \
    op interface \
    ports { buffer_c2_8_address0 { O 3 vector } buffer_c2_8_ce0 { O 1 bit } buffer_c2_8_we0 { O 1 bit } buffer_c2_8_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 239 \
    name buffer_c2_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_9 \
    op interface \
    ports { buffer_c2_9_address0 { O 3 vector } buffer_c2_9_ce0 { O 1 bit } buffer_c2_9_we0 { O 1 bit } buffer_c2_9_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 240 \
    name buffer_c2_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_10 \
    op interface \
    ports { buffer_c2_10_address0 { O 3 vector } buffer_c2_10_ce0 { O 1 bit } buffer_c2_10_we0 { O 1 bit } buffer_c2_10_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 241 \
    name buffer_c2_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_11 \
    op interface \
    ports { buffer_c2_11_address0 { O 3 vector } buffer_c2_11_ce0 { O 1 bit } buffer_c2_11_we0 { O 1 bit } buffer_c2_11_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 242 \
    name buffer_c2_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_12 \
    op interface \
    ports { buffer_c2_12_address0 { O 3 vector } buffer_c2_12_ce0 { O 1 bit } buffer_c2_12_we0 { O 1 bit } buffer_c2_12_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 243 \
    name buffer_c2_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_13 \
    op interface \
    ports { buffer_c2_13_address0 { O 3 vector } buffer_c2_13_ce0 { O 1 bit } buffer_c2_13_we0 { O 1 bit } buffer_c2_13_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 244 \
    name buffer_c2_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_14 \
    op interface \
    ports { buffer_c2_14_address0 { O 3 vector } buffer_c2_14_ce0 { O 1 bit } buffer_c2_14_we0 { O 1 bit } buffer_c2_14_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 245 \
    name buffer_c2_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_15 \
    op interface \
    ports { buffer_c2_15_address0 { O 3 vector } buffer_c2_15_ce0 { O 1 bit } buffer_c2_15_we0 { O 1 bit } buffer_c2_15_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 246 \
    name buffer_c2_16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_16 \
    op interface \
    ports { buffer_c2_16_address0 { O 3 vector } buffer_c2_16_ce0 { O 1 bit } buffer_c2_16_we0 { O 1 bit } buffer_c2_16_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 247 \
    name buffer_c2_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_17 \
    op interface \
    ports { buffer_c2_17_address0 { O 3 vector } buffer_c2_17_ce0 { O 1 bit } buffer_c2_17_we0 { O 1 bit } buffer_c2_17_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 248 \
    name buffer_c2_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_18 \
    op interface \
    ports { buffer_c2_18_address0 { O 3 vector } buffer_c2_18_ce0 { O 1 bit } buffer_c2_18_we0 { O 1 bit } buffer_c2_18_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 249 \
    name buffer_c2_19 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_19 \
    op interface \
    ports { buffer_c2_19_address0 { O 3 vector } buffer_c2_19_ce0 { O 1 bit } buffer_c2_19_we0 { O 1 bit } buffer_c2_19_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 250 \
    name buffer_c2_20 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_20 \
    op interface \
    ports { buffer_c2_20_address0 { O 3 vector } buffer_c2_20_ce0 { O 1 bit } buffer_c2_20_we0 { O 1 bit } buffer_c2_20_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 251 \
    name buffer_c2_21 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_21 \
    op interface \
    ports { buffer_c2_21_address0 { O 3 vector } buffer_c2_21_ce0 { O 1 bit } buffer_c2_21_we0 { O 1 bit } buffer_c2_21_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 252 \
    name buffer_c2_22 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_22 \
    op interface \
    ports { buffer_c2_22_address0 { O 3 vector } buffer_c2_22_ce0 { O 1 bit } buffer_c2_22_we0 { O 1 bit } buffer_c2_22_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 253 \
    name buffer_c2_23 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_23 \
    op interface \
    ports { buffer_c2_23_address0 { O 3 vector } buffer_c2_23_ce0 { O 1 bit } buffer_c2_23_we0 { O 1 bit } buffer_c2_23_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 254 \
    name buffer_c2_24 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_24 \
    op interface \
    ports { buffer_c2_24_address0 { O 3 vector } buffer_c2_24_ce0 { O 1 bit } buffer_c2_24_we0 { O 1 bit } buffer_c2_24_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 255 \
    name buffer_c2_25 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_25 \
    op interface \
    ports { buffer_c2_25_address0 { O 3 vector } buffer_c2_25_ce0 { O 1 bit } buffer_c2_25_we0 { O 1 bit } buffer_c2_25_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 256 \
    name buffer_c2_26 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_26 \
    op interface \
    ports { buffer_c2_26_address0 { O 3 vector } buffer_c2_26_ce0 { O 1 bit } buffer_c2_26_we0 { O 1 bit } buffer_c2_26_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 257 \
    name buffer_c2_27 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_27 \
    op interface \
    ports { buffer_c2_27_address0 { O 3 vector } buffer_c2_27_ce0 { O 1 bit } buffer_c2_27_we0 { O 1 bit } buffer_c2_27_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 258 \
    name buffer_c2_28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_28 \
    op interface \
    ports { buffer_c2_28_address0 { O 3 vector } buffer_c2_28_ce0 { O 1 bit } buffer_c2_28_we0 { O 1 bit } buffer_c2_28_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 259 \
    name buffer_c2_29 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_29 \
    op interface \
    ports { buffer_c2_29_address0 { O 3 vector } buffer_c2_29_ce0 { O 1 bit } buffer_c2_29_we0 { O 1 bit } buffer_c2_29_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 260 \
    name buffer_c2_30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_30 \
    op interface \
    ports { buffer_c2_30_address0 { O 3 vector } buffer_c2_30_ce0 { O 1 bit } buffer_c2_30_we0 { O 1 bit } buffer_c2_30_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 261 \
    name buffer_c2_31 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_31 \
    op interface \
    ports { buffer_c2_31_address0 { O 3 vector } buffer_c2_31_ce0 { O 1 bit } buffer_c2_31_we0 { O 1 bit } buffer_c2_31_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 262 \
    name buffer_c2_32 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_32 \
    op interface \
    ports { buffer_c2_32_address0 { O 3 vector } buffer_c2_32_ce0 { O 1 bit } buffer_c2_32_we0 { O 1 bit } buffer_c2_32_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 263 \
    name buffer_c2_33 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_33 \
    op interface \
    ports { buffer_c2_33_address0 { O 3 vector } buffer_c2_33_ce0 { O 1 bit } buffer_c2_33_we0 { O 1 bit } buffer_c2_33_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 264 \
    name buffer_c2_34 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_34 \
    op interface \
    ports { buffer_c2_34_address0 { O 3 vector } buffer_c2_34_ce0 { O 1 bit } buffer_c2_34_we0 { O 1 bit } buffer_c2_34_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 265 \
    name buffer_c2_35 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_35 \
    op interface \
    ports { buffer_c2_35_address0 { O 3 vector } buffer_c2_35_ce0 { O 1 bit } buffer_c2_35_we0 { O 1 bit } buffer_c2_35_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 266 \
    name buffer_c2_36 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_36 \
    op interface \
    ports { buffer_c2_36_address0 { O 3 vector } buffer_c2_36_ce0 { O 1 bit } buffer_c2_36_we0 { O 1 bit } buffer_c2_36_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 267 \
    name buffer_c2_37 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_37 \
    op interface \
    ports { buffer_c2_37_address0 { O 3 vector } buffer_c2_37_ce0 { O 1 bit } buffer_c2_37_we0 { O 1 bit } buffer_c2_37_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 268 \
    name buffer_c2_38 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_38 \
    op interface \
    ports { buffer_c2_38_address0 { O 3 vector } buffer_c2_38_ce0 { O 1 bit } buffer_c2_38_we0 { O 1 bit } buffer_c2_38_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 269 \
    name buffer_c2_39 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_39 \
    op interface \
    ports { buffer_c2_39_address0 { O 3 vector } buffer_c2_39_ce0 { O 1 bit } buffer_c2_39_we0 { O 1 bit } buffer_c2_39_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 270 \
    name buffer_c2_40 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_40 \
    op interface \
    ports { buffer_c2_40_address0 { O 3 vector } buffer_c2_40_ce0 { O 1 bit } buffer_c2_40_we0 { O 1 bit } buffer_c2_40_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 271 \
    name buffer_c2_41 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_41 \
    op interface \
    ports { buffer_c2_41_address0 { O 3 vector } buffer_c2_41_ce0 { O 1 bit } buffer_c2_41_we0 { O 1 bit } buffer_c2_41_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 272 \
    name buffer_c2_42 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_42 \
    op interface \
    ports { buffer_c2_42_address0 { O 3 vector } buffer_c2_42_ce0 { O 1 bit } buffer_c2_42_we0 { O 1 bit } buffer_c2_42_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 273 \
    name buffer_c2_43 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_43 \
    op interface \
    ports { buffer_c2_43_address0 { O 3 vector } buffer_c2_43_ce0 { O 1 bit } buffer_c2_43_we0 { O 1 bit } buffer_c2_43_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 274 \
    name buffer_c2_44 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_44 \
    op interface \
    ports { buffer_c2_44_address0 { O 3 vector } buffer_c2_44_ce0 { O 1 bit } buffer_c2_44_we0 { O 1 bit } buffer_c2_44_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 275 \
    name buffer_c2_45 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_45 \
    op interface \
    ports { buffer_c2_45_address0 { O 3 vector } buffer_c2_45_ce0 { O 1 bit } buffer_c2_45_we0 { O 1 bit } buffer_c2_45_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 276 \
    name buffer_c2_46 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_46 \
    op interface \
    ports { buffer_c2_46_address0 { O 3 vector } buffer_c2_46_ce0 { O 1 bit } buffer_c2_46_we0 { O 1 bit } buffer_c2_46_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 277 \
    name buffer_c2_47 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_c2_47 \
    op interface \
    ports { buffer_c2_47_address0 { O 3 vector } buffer_c2_47_ce0 { O 1 bit } buffer_c2_47_we0 { O 1 bit } buffer_c2_47_d0 { O 7 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_c2_47'"
}
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


