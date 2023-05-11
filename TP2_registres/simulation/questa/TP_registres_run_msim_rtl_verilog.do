transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/22.1std/TP2_registres {C:/intelFPGA_lite/22.1std/TP2_registres/baseline_c5gx.v}

vcom -93 -work work {C:/intelFPGA_lite/22.1std/TP2_registres/tb_flipflop_JK.vhd}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_flipflop_JK

add wave *
view structure
view signals
run -all
