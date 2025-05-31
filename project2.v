
//////////////////////////////////////////////////////////////////////////////////


module sri (
    input wire clk,
    input wire rst,
    input wire face_verified,
    input wire sim_sms_received,
    input wire [15:0] user_pin,
    output reg [15:0] balance,
    output reg access_granted,
    output reg transaction_done
);

reg [15:0] stored_pin;
reg sim_valid;
reg pin_valid;

parameter REGISTERED_SIM = 16'hA1B2;
parameter STORED_PIN = 16'h4321;
parameter MOCK_BALANCE = 16'd8000;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        sim_valid <= 0;
    end else if (sim_sms_received) begin
        sim_valid <= 1;
    end
end

always @(posedge clk or posedge rst) begin
    if (rst) begin
        access_granted <= 0;
        pin_valid <= 0;
    end else if (face_verified && sim_valid) begin
        if (user_pin == STORED_PIN) begin
            pin_valid <= 1;
            access_granted <= 1;
        end else begin
            pin_valid <= 0;
            access_granted <= 0;
        end
    end
end

always @(posedge clk or posedge rst) begin
    if (rst) begin
        transaction_done <= 0;
        balance <= 0;
    end else if (access_granted && pin_valid) begin
        balance <= MOCK_BALANCE;
        transaction_done <= 1;
    end else begin
        transaction_done <= 0;
    end
end

endmodule


//////////////////////////////////////////////////////////////////////////////////


module tb_sri;
reg clk;
reg rst;
reg face_verified;
reg sim_sms_received;
reg [15:0] user_pin;
wire [15:0] balance;
wire access_granted;
wire transaction_done;

sri uut (
    .clk(clk),
    .rst(rst),
    .face_verified(face_verified),
    .sim_sms_received(sim_sms_received),
    .user_pin(user_pin),
    .balance(balance),
    .access_granted(access_granted),
    .transaction_done(transaction_done)
);
always #5 clk = ~clk;

initial begin
    // Initialize inputs
    clk = 0;
    rst = 1;
    face_verified = 0;
    sim_sms_received = 0;
    user_pin = 16'h0000;

    // Dump waveform to VCD file
    $dumpfile("sri_tb.vcd");
    $dumpvars(0, tb_sri);

    // Step 0: Reset
    #20;
    rst = 0;

    // Step 1: SIM SMS received
    #10;
    sim_sms_received = 1;
    #10;
    sim_sms_received = 0;

    // Step 2: Face match
    #20;
    face_verified = 1;

    // Step 3: Enter correct PIN
    #10;
    user_pin = 16'h4321;

    // Wait and observe
    #100;

    $display("Simulation Complete.");
    $finish;
end

always @(posedge clk) begin
    $display("Time: %0t | Access: %b | Done: %b | Balance: %h",
    $time, access_granted, transaction_done, balance);
end

endmodule
