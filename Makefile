all:
	ghdl -i somador1bit.vhd subtrator3bits.vhd testbench.vhd
	ghdl -m testbench
	./testbench --stop-time=100ns --wave=ondas.ghw

view:
	gtkwave ondas.ghw
