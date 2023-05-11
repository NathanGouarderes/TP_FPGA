transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/22.1std/TP2_flipflop_JKRS/flipflop_jkrs.vhd}

vcom -93 -work work {C:/intelFPGA_lite/22.1std/TP2_flipflop_JKRS/tb_flipflop_JKRS.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -voptargs="+acc"  tb_flipflop_JKrs

add wave *
view structure
view signals
run -all
