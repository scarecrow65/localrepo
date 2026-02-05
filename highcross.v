module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum 
);

    // In Verilog, variables assigned in an always block must be type 'reg'
    reg [2:0] cout;
    reg [2:0] sum;
    
    // Loop variable must be declared as an integer
    integer i;

    always @(*) begin
        for (i = 0; i < 3; i = i + 1) begin
            sum[i] = a[i] ^ b[i];
            cout[i] = a[i] & b[i]; // Bitwise AND is standard for gates
        end
    end

endmodule