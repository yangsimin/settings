EdgeXOffset := -0
ScreenVisibleHeight := A_ScreenHeight - 40
ScreenHalfVisibleHeight := ScreenVisibleHeight * 0.5
ScreenOneThirdWidth := A_ScreenWidth * 0.333
ScreenTwoThirdWidth := A_ScreenWidth * 0.667
ScreenHalfWidth := A_ScreenWidth * 0.5

#s:: RestoreWindow() WinMove(EdgeXOffset, 0, ScreenTwoThirdWidth, ScreenVisibleHeight, "A")                           ; 左边 2/3
#f:: RestoreWindow() WinMove(ScreenOneThirdWidth, 0, ScreenTwoThirdWidth, ScreenVisibleHeight, "A")                   ; 右边 2/3
#d:: RestoreWindow() WinMove(ScreenOneThirdWidth / 2, 0, ScreenTwoThirdWidth, ScreenVisibleHeight, "A")               ; 居中 2/3
#c:: RestoreWindow() CenterActiveWindow()                                                                             ; 居中
#x:: RestoreWindow() WinMove(EdgeXOffset, 0, ScreenOneThirdWidth, ScreenVisibleHeight, "A")                           ; 左边 1/3
#v:: RestoreWindow() WinMove(ScreenTwoThirdWidth, 0, ScreenOneThirdWidth, ScreenVisibleHeight, "A")                   ; 右边 1/3
#h:: RestoreWindow() WinMove(EdgeXOffset, 0, ScreenHalfWidth, ScreenVisibleHeight, "A")                               ; 左边 1/2
#l:: RestoreWindow() WinMove(ScreenHalfWidth, 0, ScreenHalfWidth, ScreenVisibleHeight, "A")                           ; 右边 1/2
#j:: RestoreWindow() WinMove(EdgeXOffset, ScreenHalfVisibleHeight, A_ScreenWidth, ScreenHalfVisibleHeight, "A")       ; 下边 1/2
#k:: RestoreWindow() WinMove(EdgeXOffset, 0, A_ScreenWidth, ScreenHalfVisibleHeight, "A")                             ; 上边 1/2
#u:: RestoreWindow() WinMove(EdgeXOffset, 0, ScreenHalfWidth, ScreenHalfVisibleHeight, "A")                           ; 左上 1/4
#i:: RestoreWindow() WinMove(ScreenHalfWidth, 0, ScreenHalfWidth, ScreenHalfVisibleHeight, "A")                       ; 右上 1/4
#n:: RestoreWindow() WinMove(EdgeXOffset, ScreenHalfVisibleHeight, ScreenHalfWidth, ScreenHalfVisibleHeight, "A")     ; 左下 1/4
#m:: RestoreWindow() WinMove(ScreenHalfWidth, ScreenHalfVisibleHeight, ScreenHalfWidth, ScreenHalfVisibleHeight, "A") ; 右下 1/4

#a:: RestoreWindow() WinMove(EdgeXOffset, 0, 767, ScreenVisibleHeight, "A") ; 微信阅读窗口调整为 735px
#Enter:: MaximizeOrRestoreWindow ; 窗口最大化
#BackSpace:: WinMinimize "A" ; 窗口最小化
#Space:: WinSetAlwaysOnTop -1, "A" ; 置顶窗口

; 关闭锁屏功能
RegWrite(1, "REG_DWORD", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableLockWorkstation")
!^q:: {
  RegWrite(0, "REG_DWORD", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableLockWorkstation")
  DllCall("LockWorkStation")
  Sleep(1000)
  RegWrite(1, "REG_DWORD", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableLockWorkstation")
}

CenterActiveWindow() {
  WinExist "A"
  WinGetPos , , &width, &height
  WinMove (A_ScreenWidth - width) / 2, (ScreenVisibleHeight - height) / 2
}

MaximizeOrRestoreWindow() {
  WinExist "A"
  if (WinGetMinMax() == 1) {
    WinRestore()
  } else {
    WinMaximize()
  }
}

RestoreWindow() {
  WinExist "A"
  if (WinGetMinMax() == 1) {
    WinRestore()
  }
}