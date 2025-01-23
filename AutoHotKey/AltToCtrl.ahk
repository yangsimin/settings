!q::^q
!w::^w
!e::^e
!r::^r
!t::^t
!y::^y
!u::^u
!i::^i
!o::^o
!p::^p
!a::^a
!s::^s
!d::^d
!f::^f
!g::^g
!h::^h
!j::^j
!k::^k
!l::^l
!z::^z
!x::^x
!c::^c
!v::^v
!b::^b
!n::^n
!m::^m
!LButton::Send "^{LButton}"
PgUp::Volume_Up
PgDn::Volume_Down
Delete::Volume_Mute
Volume_Mute::Delete
^[:: Send("{Escape}")

; *CapsLock:: {
;     if A_PriorKey = "LControl" {
;         ; 下面添加的{blind}{sc0x0EA}的功能是打断 ctrl 的连击
;         SendInput("{blind}{sc0x0EA}")
;     }
;     if !GetKeyState("ctrl") {
;         Send("{Blind}{Ctrl Down}")
;     }
; }

; CapsLock up:: {
;     Send("{Blind}{Ctrl Up}")
;     if A_PriorKey = "CapsLock" && capslock_down_and_mouse = 0 {
;         ; 这里发送 ctrl up 的目的是防止出现 ^esc 组合键出现 LWin 的效果, 这里必须是 blind, 不然会导致 win 的出现
;         Send("{Blind}{Ctrl Up}")
;         Send("{esc}")
;     } 
;     if GetKeyState("ctrl") {
;         Send("{Blind}{Ctrl Up}")
;     }
; }