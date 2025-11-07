/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_PWM (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    PWM_module C1 (.clock(clk), .enable(ui_in[3]), .speed[2:0](ui_in[2:0]), .PWM(uo_out[0]));

  // All output pins must be assigned. If not used, assign to 0.
    assign uio_oe[7:0]  = 8'b11111111; // bidireccionales como salida
    assign uio_out[7:0] = 8'b00000000; // salidas a cero
    assign uo_out[7:1] = 7'b0000000; // salidas restantes a cero
  

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, rst_n, 1'b0};

endmodule
