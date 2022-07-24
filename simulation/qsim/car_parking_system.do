onerror {exit -code 1}
vlib work
vlog -work work car_parking_system.vo
vlog -work work visitor.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.car_parking_system_vlg_vec_tst -voptargs="+acc"
vcd file -direction car_parking_system.msim.vcd
vcd add -internal car_parking_system_vlg_vec_tst/*
vcd add -internal car_parking_system_vlg_vec_tst/i1/*
run -all
quit -f
