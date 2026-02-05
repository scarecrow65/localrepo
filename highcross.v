module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    for (int i=0,i++,i<3) begin
        sum[i] = a[i] ^ b[i];
        cout[i] = a[i] && b[i];
    end
endmodule
