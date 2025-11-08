# Dummy test for Tiny Tapeout
MODULE := test
TOPLEVEL := tt_um_PWM
TOPLEVEL_LANG := verilog
SIM := icarus
include $(shell cocotb-config --makefiles)/Makefile.sim

