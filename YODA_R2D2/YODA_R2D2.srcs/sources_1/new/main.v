`timescale 1ns / 1ps
module main(
    input clk
    );

reg addA;
reg addB;
reg addC;
reg addD;
reg addE;

reg injectA;
reg injectB;
reg injectC;
reg injectD;
reg injectE;

//reg [1:0] inA;
//reg [1:0] inB;
//reg [1:0] inC;
//reg [1:0] inD;   
//reg [1:0] inE;
//reg [1:0] outA;
//reg [1:0] outB;
//reg [1:0] outC;
//reg [1:0] outD;   
//reg [1:0] outE; 

//reg [1:0] NinA;
//reg [1:0] NinB;
//reg [1:0] NinC;
//reg [1:0] NinD;   
//reg [1:0] NinE;
//reg [1:0] NoutA;
//reg [1:0] NoutB;
//reg [1:0] NoutC;
//reg [1:0] NoutD;   
//reg [1:0] NoutE; 


//reg delA;
//reg delB;
//reg delC;
//reg delD;
//reg delE;

//reg delAB;
//reg delCD;
//reg delCE;
//reg delZero;

//reg pStatus;
reg[1:0] refresh;    
     
routereflector RR(
inA, inB, inC ,inD ,inE,refresh,
delA,delB,delC,delD,delE,clk,
pStatus,
outA, outB, outC, outD, outE
);   
 
node A(
clk,delA,delAB,outA,NoutB,
addA,
injectA,
inA, NinB, pStatus
    );    
    
node B(
clk,delB,delAB,outB,NoutA,
addB,
injectB,
inB, NinA, pStatus
    );

node C(
clk,delC,delCD,outC,NoutD,
addC,
injectC,
inC, NinD, pStatus
    );   
    
node D(
clk,delD,delCD,outD,NoutC,
addD,
injectD,
inE, NinC, pStatus
    );       

node E(
clk,delE,delZero,outE,delZero,
addE,
injectE,
inE, delZero, pStatus
    );      
     
endmodule
