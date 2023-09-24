// Muthanna Alwahash
// (c) Sept 2023


//transforms 4bits numbers to a 7seg iceBreaker display
//
//   --a--
//  |     |
//  f     b
//  |     |
//   --g--
//  |     |
//  e     c
//  |     |
//   --d--
//
// 7'b_gfedcba (a = LSB)
module digit_to_segments
    (
        input   [3:0]       digit,
        output  reg[6:0]    segments
    );
    assign segments =   (digit==4'h0) ? 7'b0000001 :
                        (digit==4'h1) ? 7'b1001111 :
                        (digit==4'h2) ? 7'b0010010 :
                        (digit==4'h3) ? 7'b0000110 :
                        (digit==4'h4) ? 7'b1001100 :
                        (digit==4'h5) ? 7'b0100100 :
                        (digit==4'h6) ? 7'b0100000 :
                        (digit==4'h7) ? 7'b0001111 :
                        (digit==4'h8) ? 7'b0000000 :
                        (digit==4'h9) ? 7'b0000100 :
                        (digit==4'ha) ? 7'b0001000 :
                        (digit==4'hb) ? 7'b1100000 :
                        (digit==4'hc) ? 7'b0110001 :
                        (digit==4'hd) ? 7'b1000010 :
                        (digit==4'he) ? 7'b0110000 :
                        (digit==4'hf) ? 7'b0111000 :
                        7'b0110110;                     //this should never happen "H"

endmodule

// Top Module

module top
    (
        input clk, 
        output J2_1 ,J2_2 ,J2_3 ,J2_4 ,J2_7 ,J2_8 ,J2_9 ,J2_10
    );

    reg [31:0]  timer;
    reg [3:0]   count;
    wire [6:0]  seg_out;

    digit_to_segments inst(.digit(count), .segments(seg_out));
    
    assign J2_10 = 1'b1;
    assign { J2_1 ,J2_2 ,J2_3 ,J2_4 ,J2_7 ,J2_8 ,J2_9 } = seg_out;

    initial
        begin
            timer = 0;
            count = 15;
        end

    always @(posedge clk)
        begin
            timer <= timer + 1;
            if(timer == 32'h400000) 
                begin // around 0.25 sec
                    timer <= 0;
                    count <= count + 1;
                end
        end

endmodule