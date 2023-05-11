transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/22.1std/TP1_full_adder_8bits {C:/intelFPGA_lite/22.1std/TP1_full_adder_8bits/baseline_c5gx.v}

