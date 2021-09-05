/*
[Func] Luhns.ahk
	Author:	Antony Meadows
	Date:		12/15/2020
	Description:
		Luhns() is an AutoHotkey function that returns a boolean value. The only parameter is a string containing a purported credit card number (or any other number that can be tested with the Luhns algorithm). The function returns TRUE or FALSE.
*/

luhns(szNum){
	mnLen:=StrLen(szNum)
	mnSum:=StrSplit(szNum)[mnLen-1]
	mnParity:=Mod(mnLen,2)
	for i,szValue in StrSplit(szNum){
		if(!Mod(i,2))
			szValue*=2
		if(szValue>9)
			szValue-=9
		mnSum+=szValue
	}
	return,!Mod(mnSum,10)
}