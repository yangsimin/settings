#Requires AutoHotkey v2.0

#Include 'AltToCtrl.ahk'
#Include 'WindowController.ahk'

LAlt::LWin
LWin::LAlt

;当 Ctrl 单独按下时，映射成 Esc
~*LCtrl::return
*LCtrl Up::
{
  if (A_PriorKey == "LControl") {
    Send "{Esc}"
	}
}