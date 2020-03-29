; Always on top
; Ctrl + Alt + Space
^!SPACE::  Winset, Alwaysontop, , A

; Win + F12
#F12::
Process, Exist, WindowsTerminal
If Not ErrorLevel
    Run %LOCALAPPDATA%\Microsoft\WindowsApps\Microsoft.WindowsTerminal_8wekyb3d8bbwe\wt.exe

; Ctrl + Alt + N
^!n::
Process, Exist, notepad.exe
If Not ErrorLevel
    Run, Notepad
    Return

; Ctrl + Alt + F
^!f:: Run https://www.facebook.com

; ----------------------------------------------------
; Visual Studio
; ----------------------------------------------------

~Shift & WheelUp::
    scroll(0)
    Return

~Shift & WheelDown::
    scroll(1)
    Return

scroll(direction)
{
    SetTitleMatchMode, 2
    ControlGetFocus, fcontrol, Visual Studio
    Loop 5
    SendMessage, 0x114, %direction%, 0, %fcontrol%, Visual Studio
}

; ----------------------------------------------------