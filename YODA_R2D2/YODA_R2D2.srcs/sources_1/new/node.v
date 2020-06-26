`timescale 1ns / 1ps
module node(
input clk,delayRR,delayN,inRR,inN,
input [2:0]addr,
input [15:0]injectPacket,
output outRR, outN, packetStatus
    );
//delayRR is delay between Route Reflector
//delayN is delay between Nodes
reg DelRR=0;
reg DelN=0;
reg outReflector;
reg outNode;
reg [15:0]TxRR;
reg [1:0]RRPacketRx[15:0];
reg [1:0]NPacketRx[15:0];
reg startRR;
reg startN;
reg countRR = 0;
reg countN = 0;
reg [2:0]pStatus = 0;
reg sendN = 0;
reg sendRR=0;
reg NodeToRR=0;

reg sendCountN=0;
reg sendCountRR=0;
    
always @(posedge clk) begin
//recieveRR
if(startRR==0 && inRR ==1)begin
startRR<=1;
countRR<=0;
end

if(startRR==1)begin //receive from Route Reflector
RRPacketRx[countRR]<=inRR;
countRR<=countRR+1'b1;
    if(countRR==16)begin
    startRR<=0;
    end
end
if(delayRR==DelRR)begin
    DelRR<=0;
if(countRR==16)begin
    if(RRPacketRx[4]== addr[0] && RRPacketRx[5]== addr[1]&& RRPacketRx[6]== addr[2])begin
    pStatus<={RRPacketRx[13],RRPacketRx[14],RRPacketRx[15]}; 
    end else begin sendN<=1; end
end else begin DelRR<=DelRR+1; end    
end



//////////////////
//sendN
if(sendN==1)begin       //Send to Route Reflector
outNode<=RRPacketRx[sendCountN];
sendCountN<=sendCountN+1'b1;
    if(sendCountN==16)begin sendN<=0; sendCountN<=0; end
end

if(injectPacket!=0)begin    //Data is being injected
TxRR<=injectPacket; sendRR<=1;   //init send Inject to RR
end

if(sendRR<=1 && NodeToRR!=1)begin  //send to RR from Injection
outReflector<=TxRR[sendCountRR];
sendCountRR<=sendCountRR+1'b1;
    if(sendCountRR==16)begin sendRR<=0; sendCountRR<=0; end
end else if(sendRR<=1 && NodeToRR==1)begin //send to RR from Node
outReflector<=NPacketRx[sendCountRR];
sendCountRR<=sendCountRR+1'b1;
    if(sendCountRR==16)begin sendRR<=0; sendCountRR<=0; NodeToRR=0; end   
end

//rec Node
if(startN==0 && inN ==1)begin
startN<=1;
countN<=0;
end
if(startN==1)begin //receive from Node
NPacketRx[countN]<=inN;
countN<=countN+1'b1;
    if(countN==16)begin
    startN<=0;
    end
end
if(countN==16)begin
if(delayN==DelN)begin
    DelN<=0;
    if(NPacketRx[4]== addr[0] && NPacketRx[5]== addr[1]&& NPacketRx[6]== addr[2])begin
    pStatus<={NPacketRx[13],NPacketRx[14],NPacketRx[15]}; 
    end else begin sendRR<=1; NodeToRR<=1; end
end else begin DelN<=DelN+1; end    
end
//rec Node

end   
//assigns

assign outRR = outReflector;
assign outN = outNode;
assign packetStatus = pStatus;

endmodule
