#SingleInstance force
#MaxHotkeysPerInterval 100
#UseHook
Process, Priority,, Realtime
SetKeyDelay -1

Menu, Tray, NoStandard
Menu, Tray, Tip, 键盘布局 - Dvorak
Menu, Tray, Add, 切换 (&Q), MenuSuspend
Menu, Tray, Add, 切换 (&Q), MenuSuspend
Menu, Tray, Add, 退出 (&E), MenuExit
Menu, Tray, Default, 切换 (&Q)
Menu, Tray, Click, 1
Suspend Off
If (!A_IsCompiled) {
  Menu, Tray, Icon, D.ico, 1, 1
}

return

MenuExit:
  ExitApp

MenuSuspend:
  Suspend Permit
  if (A_IsSuspended) {
    Suspend Off
    If (!A_IsCompiled) {
      Menu, Tray, Icon, D.ico, 1, 1
    }
    Menu, Tray, Tip, 键盘布局 - Dvorak
  } else {
    Suspend On
    If (!A_IsCompiled) {
      Menu, Tray, Icon, Q.ico, 1, 1
    }
    Menu, Tray, Tip, 键盘布局 - QWERTY
  }
  return

*LWin::
  Suspend Permit
  if (!p) {
    p := true
    old := A_IsSuspended
    nbsp := false
    ck := A_TimeSincePriorHotkey
    plwin := A_PriorHotkey = "*LWin up"
  }
  Suspend On
  Menu, Tray, Tip, 键盘布局 - QWERTY
  If (!A_IsCompiled) {
    Menu, Tray, Icon, Q.ico, 1, 1
  }
  return

*LWin up::
  Suspend Permit
  Send {LWin Up}
  p := false
  if (!(((ck < 200) && (ck > 0) && plwin) || (nbsp && old))) {
    Suspend Off
    Menu, Tray, Tip, 键盘布局 - Dvorak
    If (!A_IsCompiled) {
      Menu, Tray, Icon, D.ico, 1, 1
    }
  } 
  return

-::[
=::]
q::'
w::,
e::.
r::p
t::y
y::f
u::g
i::c
o::r
p::l
[::/
]::=
a::a
s::o
d::e
f::u
g::i
h::d
j::h
k::t
l::n
`;::s
'::-
z::`;
x::q
c::j
v::k
b::x
n::b
m::m
,::w
.::v
/::z
Enter::Enter
Space::
  Suspend Permit
  nbsp := true
  if (p) {
    Send #{Space}
  } else {
    Send {Space}
  }
  return
