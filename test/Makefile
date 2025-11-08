# Dummy test for Tiny Tapeout
MODULE := test
TOPLEVEL := tt_um_PWM        # Usa el nombre exacto de tu módulo top (ajusta mayúsculas/minúsculas)
TOPLEVEL_LANG := verilog
SIM := icarus

# 🔹 Agregamos los archivos fuente Verilog del diseño
VERILOG_SOURCES := ../src/tt_um_PWM.v ../src/PWM.v

include $(shell cocotb-config --makefiles)/Makefile.sim
