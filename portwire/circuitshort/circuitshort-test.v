// test that ouputs every possible option if a wire has a current or does not have a current.

module circuitshorttest();

reg atest,btest,ctest;
wire f;

circuitshort DUT(atest,btest,ctest,f);

initial
begin
        $dumpfile("circuitshort.vcd");
        $dumpvars(0, DUT);

        atest <= 0; btest <= 0; ctest <= 0;
        #5
        $display("atest = %d, btest = %d, ctest = %d, f = %d", atest, btest, ctest, f);

        atest <= 0; btest <= 0; ctest <= 1;
        #5
        $display("atest = %d, btest = %d, ctest = %d, f = %d", atest, btest, ctest, f);

        atest <= 0; btest <= 1; ctest <= 0;
        #5
        $display("atest = %d, btest = %d, ctest = %d, f = %d", atest, btest, ctest, f);

        atest <= 1; btest <= 0; ctest <= 0;
        #5
        $display("atest = %d, btest = %d, ctest = %d, f = %d", atest, btest, ctest, f);

        atest <= 0; btest <= 1; ctest <= 1;
        #5
        $display("atest = %d, btest = %d, ctest = %d, f = %d", atest, btest, ctest, f);

        atest <= 1; btest <= 1; ctest <= 1;
        #5
        $display("atest = %d, btest = %d, ctest = %d, f = %d", atest, btest, ctest, f);

        atest <= 1; btest <= 0; ctest <= 1;
        #5
        $display("atest = %d, btest = %d, ctest = %d, f = %d", atest, btest, ctest, f);

        atest <= 1; btest <= 1; ctest <= 0;
        #5
        $display("atest = %d, btest = %d, ctest = %d, f = %d", atest, btest, ctest, f);

end

endmodule
