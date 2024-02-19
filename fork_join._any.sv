module fork_join_any;

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
                 #7
                 $display($time,"statement 3 is excuted");
            end
        join_any
         $display($time,"final statement");
    end

endmodule



       /*            0statement 1
#                    0statement 2
#                    0statement 3
#                    5statement 1 is excuted
#                    5final statement
#                    7statement 3 is excuted
#                   10statement 2 is excuted   */


