; #Warn All, MsgBox  ; debug
#SingleInstance force
#InstallKeybdHook
#UseHook
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetCapsLockState, AlwaysOff

#MaxHotkeysPerInterval 350  ; To let this work well with Razer Synapse? https://github.com/karakaram/alt-ime-ahk/blob/master/alt-ime-ahk.ahk
SetKeyDelay 0  ; No idea


;; Needed to support non english keyboard layouts, or so said
global a := "{vk41}"
global b := "{vk42}"
global c := "{vk43}"
global d := "{vk44}"
global e := "{vk45}"
global f := "{vk46}"
global g := "{vk47}"
global h := "{vk48}"
global i := "{vk49}"
global j := "{vk4A}"
global k := "{vk4B}"
global l := "{vk4C}"
global m := "{vk4D}"
global n := "{vk4E}"
global o := "{vk4F}"
global p := "{vk50}"
global q := "{vk51}"
global r := "{vk52}"
global s := "{vk53}"
global t := "{vk54}"
global u := "{vk55}"
global v := "{vk56}"
global w := "{vk57}"
global x := "{vk58}"
global y := "{vk59}"
global z := "{vk5A}"

;; C-{X}, C-S-{X} ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Cursor Motion
F13 & a::
    if GetKeyState("Shift", "p") {
        Send +{Home}
    }
    else {
        Send {Home}
    }
    return   
F13 & e::
    if GetKeyState("Shift", "p") {
        Send +{End}
    }
    else {
        Send {End}
    }
    return 
F13 & f::
    if GetKeyState("Shift", "p") {
        Send +{Right}
    }
    else {
        Send {Right}
    }
    return
F13 & b::
    if GetKeyState("Shift", "p") {
        Send +{Left}
    }
    else {
        Send {Left}
    }
    return
F13 & p::
    if GetKeyState("Shift", "p") {
        Send +{Up}
    }
    else {
        Send {Up}
    }
    return
F13 & n::
    if GetKeyState("Shift", "p") {
        Send +{Down}
    }
    else {
        Send {Down}
    }
    return
F13 & v::
    if GetKeyState("Shift", "p") {
        Send +{PgDn}
    }
    else {
        Send {PgDn}
    }
    return

;; BS, Delete, Copy, Paste
F13 & d::Send {Del}
F13 & h::Send {BS}
F13 & y::Send ^%v%
F13 & w::Send ^%x%
F13 & k::Send +{End}{Del}

;; Cancel
F13 & g::Send {Esc}

;; Others
F13 & i::Send {Tab}
F13 & j::Send {Enter}
F13 & o::Send {Enter}{Up}

;; M-{X} ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Escape::Send {Esc}
;; Cursor Motion
Escape & f::Send ^{Right}
Escape & b::Send ^{Left}
Escape & p::
    Loop, 5
    Send {Up}
    return
Escape & n::
    Loop, 5
    Send {Down}
    return
Escape & v::Send {PgUp}
Escape & <::Send ^{Home}
Escape & >::Send ^{End}

;; Delete, Copy & Paste
Escape & d::Send {BS}
Escape & h::Send ^{BS}
Escape & w::Send ^%x%
