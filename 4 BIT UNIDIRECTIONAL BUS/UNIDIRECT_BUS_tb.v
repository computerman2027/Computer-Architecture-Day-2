`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 14:44:20
// Design Name: 
// Module Name: UNIDIRECT_BUS_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module UNIDIRECT_BUS_tb();

reg[3:0] inp;
reg c;
wire[3:0] o;

UNIDIRECT_BUS uut(.inp(inp),.c(c), .o(o));
initial begin

for(integer i =0;i<16;i=i+1)
    begin
        inp=i;
        c=0;
        #25;
        //inp=i;
        c=1;
        #25;
    end
end
endmodule
