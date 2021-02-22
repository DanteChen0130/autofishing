#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>

HotKeySet("{ESC}", "_Terminate")
Fishiing()



Func Fishiing()
   $ratioW = (@DeskTopWidth/1920)
   $ratioH = (@DesktopHeight/1080)
   While 1
   MouseMove(1539*$ratioW, 694*$ratioH)
   Local $iColor = PixelGetColor(1539*$ratioW, 694*$ratioH)

   ;MsgBox($MB_SYSTEMMODAL, "", "The hex color is: " & Hex($iColor, 6))
   Local $pColor = Hex($iColor, 6)
   Local $R = Dec(StringMid($pColor, 1, 2))
   Local $G = Dec(StringMid($pColor, 3, 2))
   Local $B = Dec(StringMid($pColor, 5, 2))
   ;MsgBox($MB_SYSTEMMODAL, "", "The decimal R color is: " & $R)
   ;MsgBox($MB_SYSTEMMODAL, "", "The decimal G color is: " & $G)
   ;MsgBox($MB_SYSTEMMODAL, "", "The decimal B color is: " & $B)

   If $G > 210 Then
	  If $B < 100 Then
	  MouseMove(1539*$ratioW, 694*$ratioH)
	  MouseClick($MOUSE_CLICK_LEFT, 1539*$ratioW, 694*$ratioH, 1)
	  Sleep (5000)
	  MouseClick($MOUSE_CLICK_LEFT, 1539*$ratioW, 694*$ratioH, 1)
	  EndIf
   EndIf
WEnd
EndFunc   ;==>Fishiing

Func _Terminate()
    Exit
EndFunc   ;==>_Terminate