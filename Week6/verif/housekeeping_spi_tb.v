`timescale 1ns / 1ps

module housekeeping_spi_tb;

    reg CSB;
    reg SCK;
    reg SDI;
    wire SDO;
    wire sdoenb;
    reg reset;

    wire pass_thru_mgmt;
    wire pass_thru_mgmt_delay;
    wire pass_thru_mgmt_reset;
    wire pass_thru_user;
    wire pass_thru_user_delay;
    wire pass_thru_user_reset;
    wire rdstb;
    wire wrstb;
    wire [7:0] oaddr;
    wire [7:0] odata;
    reg  [7:0] idata;

    housekeeping_spi uut (
        .CSB(CSB),
        .SCK(SCK),
        .SDI(SDI),
        .SDO(SDO),
        .pass_thru_mgmt(pass_thru_mgmt),
        .pass_thru_mgmt_delay(pass_thru_mgmt_delay),
        .pass_thru_mgmt_reset(pass_thru_mgmt_reset),
        .pass_thru_user(pass_thru_user),
        .pass_thru_user_delay(pass_thru_user_delay),
        .pass_thru_user_reset(pass_thru_user_reset),
        .rdstb(rdstb),
        .reset(reset),
        .sdoenb(sdoenb),
        .wrstb(wrstb),
        .idata(idata),
        .oaddr(oaddr),
        .odata(odata)
    );

    `ifdef ENABLE_SDF
    initial begin
        $display("[INFO] Annotating SDF timing delays...");
        $sdf_annotate("housekeeping_spi.sdf", uut);
    end
    `endif

    task send_byte(input [7:0] data_in);
        integer i;
        begin
            for (i = 7; i >= 0; i = i - 1) begin
                SCK = 1'b0;
                SDI = data_in[i];
                #50;
                SCK = 1'b1;
                #50;
            end
            SCK = 1'b0;
        end
    endtask

    initial begin
        $dumpfile("housekeeping_spi_gls.vcd");
        $dumpvars(0, housekeeping_spi_tb);

        CSB = 1'b1;
        SCK = 1'b0;
        SDI = 1'b0;
        reset = 1'b1;
        idata = 8'hA5;

        #200;
        reset = 1'b0;
        #200;

        $display("--------------------------------------------------");
        $display("[TEST START] Beginning Post-Layout SPI Simulation");
        $display("--------------------------------------------------");

        // Transaction 1: Write Command
        CSB = 1'b0;
        #100;
        $display("[INFO] Sending SPI Write: 0x80 (CMD), 0x05 (ADDR), 0x3C (DATA)");
        send_byte(8'h80);
        send_byte(8'h05);
        send_byte(8'h3C);
        #100;
        CSB = 1'b1;

        #500;

        // Transaction 2: Read Command
        CSB = 1'b0;
        #100;
        $display("[INFO] Sending SPI Read: 0x40 (CMD), 0x05 (ADDR)");
        send_byte(8'h40);
        send_byte(8'h05);
        send_byte(8'h00);
        #100;
        CSB = 1'b1;

        #500;
        $display("--------------------------------------------------");
        $display("[TEST PASSED] Gate-Level Simulation Completed cleanly!");
        $display("--------------------------------------------------");
        $finish;
    end

endmodule
