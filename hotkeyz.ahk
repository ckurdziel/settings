#NoEnv             ; Recommended for performance and compatibility with future AutoHotkey releases.
#Persistent	   ; This keeps the script running permanently.
#SingleInstance	   ; Only allows one instance of the script to run.
#Warn              ; Enable warnings to assist with detecting common errors. 
#InstallKeybdHook

SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapslockState, AlwaysOff

GroupAdd, Browsers, ahk_class MozillaWindowClass
GroupAdd, Browsers, ahk_class Chrome_WidgetWin_1
GroupAdd, Fps, ahk_class UnrealWindow
GroupAdd, Fps, ahk_class TankWindowClass
GroupAdd, Fps, ahk_class techland_game_class
GroupAdd, Fps, ahk_exe HeroesOfTheStorm_x64.exe
GroupAdd, Fps, ahk_class Respawn001

;;; Prefixes:
;;; ! Alt
;;; ^ Ctrl
;;; + Shift
;;; # Windows

;;; Browser Specific
#IfWinActive ahk_group Browsers
  !1::Send ^1
  !2::Send ^2
  !3::Send ^3
  !4::Send ^4
  !5::Send ^5
  !6::Send ^6
  !7::Send ^7
  !t::Send ^t
  +!t::Send +^t
  !w::Send ^w
  !l::Send ^l
  !r::Send ^r

  ![::Send ^{PgUp}
  !]::Send ^{PgDn}
  !+[::Send ^{PgUp}
  !+]::Send ^{PgDn}

  ^[::Send ^{PgUp}
  ^]::Send ^{PgDn}
  ^+[::Send ^{PgUp}
  ^+]::Send ^{PgDn}

  !Left::SendInput !{Left}
  !Right::SendInput !{Right}
  !LButton::SendInput ^{LButton}
  !\::Send ^\
#IfWinActive

;;; General Maclike Hotkeys, when not in a Fps game
#IfWinNotActive ahk_group Fps
  !c::Send ^c
  !x::Send ^x
  !f::Send ^f
  !g::Send ^g
  !+g::Send ^+g
  !v::Send ^v
  !z::Send ^z
  !+z::Send ^+z
  !s::Send ^s
  !w::Send ^w
  #Left::SendInput ^{Left}
  #Right::SendInput ^{Right}
  #+Left::SendInput ^+{Left}
  #+Right::SendInput ^+{Right}

  ;; Cursor Movement
  !Left::SendInput {Home}
  !Right::SendInput {End}
  !+Left::SendInput +{Home}
  !+Right::SendInput +{End}
  !a::SendInput ^a
  
  ;;; Alt+H To Minimize
  !h::WinMinimize,a

  ;; Alt-q to Quit
  !q::Send !{F4}
#IfWinNotActive