EdgeXOffset := -0
ScreenVisibleHeight := A_ScreenHeight - 40
ScreenHalfVisibleHeight := ScreenVisibleHeight * 0.5
ScreenOneThirdWidth := A_ScreenWidth * 0.333
ScreenTwoThirdWidth := A_ScreenWidth * 0.667
ScreenHalfWidth := A_ScreenWidth * 0.5

#s:: WinMove EdgeXOffset, 0, ScreenTwoThirdWidth, ScreenVisibleHeight, "A" ; 左边 2/3
#f:: WinMove ScreenOneThirdWidth, 0, ScreenTwoThirdWidth, ScreenVisibleHeight, "A" ; 右边 2/3
#d:: WinMove ScreenOneThirdWidth / 2, 0, ScreenTwoThirdWidth, ScreenVisibleHeight, "A" ; 居中 2/3
#c:: CenterActiveWindow() ; 居中
#x:: WinMove EdgeXOffset, 0, ScreenOneThirdWidth, ScreenVisibleHeight, "A" ; 左边 1/3
#v:: WinMove ScreenTwoThirdWidth, 0, ScreenOneThirdWidth, ScreenVisibleHeight, "A" ; 右边 1/3
#h:: WinMove EdgeXOffset, 0, A_ScreenWidth / 2, ScreenVisibleHeight, "A" ; 左边 1/2
;#l:: WinMove A_ScreenWidth / 2, 0, A_ScreenWidth / 2, ScreenVisibleHeight, "A" ; 右边 1/2
#j:: WinMove EdgeXOffset, ScreenVisibleHeight / 2, A_ScreenWidth, ScreenVisibleHeight / 2, "A" ; 下边 1/2
#k:: WinMove EdgeXOffset, 0, A_ScreenWidth, ScreenVisibleHeight / 2, "A" ; 上边 1/2
#u:: WinMove EdgeXOffset, 0, ScreenHalfWidth, ScreenHalfVisibleHeight, "A" ; 左上 1/4
#i:: WinMove ScreenHalfWidth, 0, ScreenHalfWidth, ScreenHalfVisibleHeight, "A" ; 右上 1/4
#n:: WinMove EdgeXOffset, ScreenHalfVisibleHeight, ScreenHalfWidth, ScreenHalfVisibleHeight, "A" ; 左下 1/4
#m:: WinMove ScreenHalfWidth, ScreenHalfVisibleHeight, ScreenHalfWidth, ScreenHalfVisibleHeight, "A" ; 右下 1/4

#r:: WinMove EdgeXOffset, 0, 767, ScreenVisibleHeight, "A" ; 微信阅读窗口调整为 735px
#Enter:: MaximizeOrRestoreWindow ; 窗口最大化
#BackSpace:: WinMinimize "A" ; 窗口最小化

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