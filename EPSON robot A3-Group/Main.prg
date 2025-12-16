Integer Tokens
Integer Blocks
Double TokenHeight
Double BlockHeight
Integer TokenID
Integer BlockID
Integer placeblocck

Function main

Motor On
Power High
Speed 20
Accel 30, 30
SpeedS 500
AccelS 5000
Tool 1

Tokens = 5
Blocks = 5
placeblocck = 0
TokenHeight = 6.0
BlockHeight = 6.0

'Go Retract_Safe
'Do While Sw(1) = False
'	Print "wait"
'Loop
TmReset 0
For BlockID = Blocks To 1 Step -1
	Go Infeed_Token +Z(35 + (Blocks * BlockHeight)) CP
	Move Infeed_Token +Z(Blocks * BlockHeight) CP
	On 8
	Wait 0.4
	Move Infeed_Token +Z(50 + (Blocks * BlockHeight)) CP
	Go pp1 +Z(placeblocck * BlockHeight) +Z(30) CP
	Move pp1 +Z(placeblocck * BlockHeight) +Z(3) CP
	Off 8
	Go pp1 +Z(placeblocck * BlockHeight) +Z(30) CP
	placeblocck = placeblocck + 1
	
	Go Infeed_Block +Z(35 + (Blocks * BlockHeight)) CP
	Move Infeed_Block +Z(Blocks * BlockHeight) +Z(3) CP
	On 8
	Wait 0.4
	Move Infeed_Block +Z(50 + (Blocks * BlockHeight)) CP
	Go pp1 +Z(placeblocck * BlockHeight) +Z(30) CP
	Move pp1 +Z(placeblocck * BlockHeight)
	Off 8
	Go pp1 +Z(placeblocck * BlockHeight) +Z(30) CP
	
	placeblocck = placeblocck + 1
	Blocks = Blocks - 1
	Print (Blocks)
Next BlockID

Blocks = 5

For BlockID = Blocks To 1 Step -1
	Go token2 +Z(placeblocck * BlockHeight) +Z(30) CP
    Move token2 +Z(Blocks * BlockHeight)
	On 8
	Wait 0.4
	Move token2 +Z(placeblocck * BlockHeight) +Z(30) CP
	Go pp1 +Z(placeblocck * BlockHeight) +Z(30) CP
	Move pp1 +Z(placeblocck * BlockHeight) +Z(3) CP
	Off 8
	Go pp1 +Z(placeblocck * BlockHeight) +Z(30) CP
	placeblocck = placeblocck + 1
	
	Go block2 +Z(placeblocck * BlockHeight) +Z(30) CP
	Move block2 +Z(Blocks * BlockHeight) CP
	On 8
	Wait 0.4
	Move block2 +Z(placeblocck * BlockHeight) +Z(30) CP
	Go pp1 +Z(placeblocck * BlockHeight) +Z(30) CP
	Move pp1 +Z(placeblocck * BlockHeight) +Z(3) CP
	Off 8
	Go pp1 +Z(placeblocck * BlockHeight) +Z(30) CP
	
	placeblocck = placeblocck + 1
	Blocks = Blocks - 1
	Print (Blocks)
Next BlockID

Home
Print "total time:", Tmr(0)

Fend



