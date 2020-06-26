`timescale 1ns / 1ps
module routereflector(
input[1:0] inA, inB, inC ,inD ,inE,refresh,
input delA,delB,delC,delD,delE,clk,
input [2:0] pStatus,
output[1:0] outA, outB, outC, outD, outE
    );
reg OutA, OutB, OutC, OutD, OutE;
reg[2:0] LUT [4:0];
reg startRxA = 0;
reg startRxB = 0;
reg startRxC = 0;
reg startRxD = 0;
reg startRxE = 0;
reg countRxA = 0;
reg countRxB = 0;
reg countRxC = 0;
reg countRxD = 0;
reg countRxE = 0;
reg startTxA = 0;
reg startTxB = 0;
reg startTxC = 0;
reg startTxD = 0;
reg startTxE = 0;
reg countTxA = 0;
reg countTxB = 0;
reg countTxC = 0;
reg countTxD = 0;
reg countTxE = 0;
reg [1:0]PacketA[15:0];
reg [1:0]PacketB[15:0];
reg [1:0]PacketC[15:0];
reg [1:0]PacketD[15:0];
reg [1:0]PacketE[15:0];
reg [15:0]TxPacketA;
reg [15:0]TxPacketB;
reg [15:0]TxPacketC;
reg [15:0]TxPacketD;
reg [15:0]TxPacketE;
reg DelA;
reg DelB;
reg DelC;
reg DelD;
reg DelE;


always @(posedge clk)begin

//Recieve Data from Inputs
if(startRxA==0 && inA ==1)begin //Detected Start of Read from Node A
startRxA<=1;
countRxA<=0;
end
if(startRxB==0 && inB ==1)begin //Detected Start of Read from Node B
startRxB<=1;
countRxB<=0;
end
if(startRxC==0 && inC ==1)begin //Detected Start of Read from Node C
startRxC<=1;
countRxC<=0;
end
if(startRxD==0 && inD ==1)begin //Detected Start of Read from Node D
startRxD<=1;
countRxD<=0;
end
if(startRxE==0 && inE ==1)begin //Detected Start of Read from Node E
startRxE<=1;
countRxE<=0;
end

if(startRxA==1)begin //receive A
PacketA[countRxA]<=inA;
countRxA<=countRxA+1'b1;
    if(countRxA==16)begin
    startRxA<=0;
    end
end
if(delA==DelA)begin
    DelA<=0;
if(countRxA==16)begin
    //insert RR logic for where to send Packet
end else begin DelA<=DelA+1; end    
end

if(startRxB==1)begin //receive B
PacketB[countRxB]<=inB;
countRxB<=countRxB+1'b1;
    if(countRxB==16)begin
    startRxB<=0;
    end
end
if(delB==DelB)begin
    DelB<=0;
if(countRxB==16)begin
    //insert RR logic for where to send Packet
end else begin DelB<=DelB+1; end    
end

if(startRxC==1)begin //receive C
PacketC[countRxC]<=inC;
countRxC<=countRxC+1'b1;
    if(countRxC==16)begin
    startRxC<=0;
    end
end
if(delC==DelC)begin
    DelC<=0;
if(countRxC==16)begin
    //insert RR logic for where to send Packet
end else begin DelC<=DelC+1; end    
end

if(startRxD==1)begin //receive D
PacketD[countRxD]<=inD;
countRxD<=countRxD+1'b1;
    if(countRxD==16)begin
    startRxD<=0;
    end
end
if(delD==DelD)begin
    DelD<=0;
if(countRxD==16)begin
    //insert RR logic for where to send Packet
end else begin DelD<=DelD+1; end    
end

if(startRxE==1)begin //receive E
PacketD[countRxE]<=inE;
countRxE<=countRxE+1'b1;
    if(countRxE==16)begin
    startRxE<=0;
    end
end
if(delE==DelE)begin
    DelE<=0;
if(countRxE==16)begin
    //insert RR logic for where to send Packet
end else begin DelE<=DelE+1; end    
end

//Send Data to Outputs

if(startTxA==1)begin       //Send to A
OutA<=TxPacketA[countTxA];
countTxA<=countTxA+1'b1;
    if(countTxA==16)begin startTxA<=0; countTxA<=0; end
end

if(startTxB==1)begin       //Send to B
OutB<=TxPacketB[countTxB];
countTxB<=countTxB+1'b1;
    if(countTxB==16)begin startTxB<=0; countTxB<=0; end
end

if(startTxC==1)begin       //Send to C
OutC<=TxPacketC[countTxC];
countTxC<=countTxC+1'b1;
    if(countTxC==16)begin startTxC<=0; countTxC<=0; end
end

if(startTxD==1)begin       //Send to D
OutD<=TxPacketD[countTxD];
countTxD<=countTxD+1'b1;
    if(countTxD==16)begin startTxD<=0; countTxD<=0; end
end

if(startTxE==1)begin       //Send to E
OutE<=TxPacketE[countTxE];
countTxE<=countTxE+1'b1;
    if(countTxE==16)begin startTxE<=0; countTxE<=0; end
end

//Reflector Algorithm




end  

//always @(posedge refresh)begin
//startTxA <= 1;
//startTxB <= 1;
//startTxC <= 1;
//startTxD <= 1;
//startTxE <= 1;
//TxPacketA<= 16'b1000001000000001;//[1][000][001][000000][001]
//TxPacketB<= ;
//TxPacketC<= ;
//TxPacketD<= ;
//TxPacketE<= ;
//end  

endmodule
