transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {tx_uart.vo}

vcom -93 -work work {D:/proyectosQuartus/UART/tx_uart_final/tb_tx_uart.vhd}

vsim -t 1ps -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  tb_tx_uart

add wave *
view structure
view signals
run -all
