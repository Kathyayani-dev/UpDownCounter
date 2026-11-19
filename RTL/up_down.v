# code for up_down.v
  ...
     module up_down(d_in,load,clk,reset,mode,count);
        input [3:0]d_in;
        input load,clk,reset,mode;
        output reg [3:0]count;

        always@(posedge clk)
        begin
                if(reset)
                        count<=4'b0;
                else if(load)
                        count<=d_in;
                else if(~mode)
                        count<=count-1'b1;
                else
                        count<=count+1'b1;
        end
        endmodule
...
