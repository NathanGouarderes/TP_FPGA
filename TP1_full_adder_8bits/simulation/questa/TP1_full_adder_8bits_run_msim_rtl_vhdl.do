transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/22.1std/TP1_full_adder_8bits/half_adder.vhd}
vcom -93 -work work {C:/intelFPGA_lite/22.1std/TP1_full_adder_8bits/full_adder_8b.vhd}

