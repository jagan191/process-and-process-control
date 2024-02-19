module wait_disable;

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

       // wait fork;
       disable fork;
         #7 $display($time,"final statement");
    end

endmodule

/* op for wait       0statement 1
#                    0statement 2
#                    0statement 3
#                    5statement 1 is excuted
#                   10statement 2 is excuted
#                   10statement 3 is excuted
#                   17final statement                */



// op for disable<<<<<<<   7final statement   








