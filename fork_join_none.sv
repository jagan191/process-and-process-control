module fork_join_none;

    initial begin
        fork
            begin
                $display($time,"statement 1");
                #5
                $display($time,"statement 1 is excuted");
            end

            begin
                 $display($time,"statement 2");
                 #10
                 $display($time,"statement 2 is excuted");
            end

            begin
                 $display($time,"statement 3");
                 #10
                 $display($time,"statement 3 is excuted");
            end
        join_none
         $display($time,"final statement");
    end

endmodule


              /*     0final statement
#                    0statement 1
#                    0statement 2
#                    0statement 3
#                    5statement 1 is excuted
#                   10statement 2 is excuted
#                   10statement 3 is excuted  */



