onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib AddressLUT_opt

do {wave.do}

view wave
view structure
view signals

do {AddressLUT.udo}

run -all

quit -force
