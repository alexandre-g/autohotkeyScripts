#SingleInstance force
#NoEnv
#InstallKeybdHook

if not A_IsAdmin 
{ 
DllCall("shell32\ShellExecuteA", uint, 0, str, "RunAs", str, A_AhkPath 
, str, """" . A_ScriptFullPath . """", str, A_WorkingDir, int, 1) 
ExitApp 
}

DllCall("shell32\ShellExecuteA", uint, 0, str, "RunAs", str, "C:\Program Files (x86)\TCB Networks\StrokeIt\strokeit.exe", str, PARAMS , str, A_WorkingDir, int, 1)

Run C:\Scripts\win_move_size.ahk


#ifWinActive, ahk_class VISIOA
; Pan
Mbutton::
Send, {ALT DOWN}{CTRL DOWN}{SHIFT DOWN}{RButton down}
return

Mbutton up::
Send, {ALT UP}{CTRL UP}{SHIFT UP}{RButton up}
return
#IfWinActive




#!^+x:: FileRecycleEmpty

#IfWinNotActive ahk_exe studio64.exe
!w:: Send !{F4}
#IfWinNotActive


#IfWinActive ahk_exe studio64.exe
!^+Right::
    Sleep 25
    Send ^{Right}
    Send ^{Right}
    Sleep 25
    Send {Alt Down}{w}{Alt Up}
    Return
return

!^+Left::
    Sleep 25
    Send ^{Left}
    Send ^{Left}
    Sleep 25
    Send {Alt Down}{w}{Alt Up}
    Return
return
#IfWinActive

;;if(WinNotActive("ahk_exe studio_64.exe")){
;;    !w:: Send !{F4}
;;}


;;Capslock & Space::Send {LAlt Down}{Shift}{LAlt Up}

#down::WinMinimize,a

Capslock::
if (A_PriorHotkey <> "Capslock" or A_TimeSincePriorHotkey > 400)
{
    ; Too much time between presses, so this isn't a double-press.
    Send {LAlt Down}{Shift}{LAlt Up}
	SetCapslockState AlwaysOff
    return
}

SetTitleMatchMode 2
IfWinExist, Google Chrome
{ 
	WinActivate Google Chrome
	WinWaitActive Google Chrome
	PostMessage, 0x50, 0, 0x1409,, A
	Sleep 100
	Send ^t
	Send ^l
}
else
{
	Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
	sleep 300
	WinActivate Google Chrome
	WinWaitActive Google Chrome
	sleep 100
	Send ^l
}
return





#IfWinActive ahk_class ExploreWClass
!e::
#IfWinActive ahk_class CabinetWClass
!e::
    Sleep 150
    Send +{F10}
    Sleep 50 
    Send {Down 3}{Enter} ; 
    Return
return
#IfWinActive

#IfWinActive ahk_class ExploreWClass
!d::
#IfWinActive ahk_class CabinetWClass
!d::
    Sleep 350
    Send +{F10}
    Sleep 50 
    Send {Down 4}{Enter} ; 
    Return
return
#IfWinActive




::lb::letitbit.net
::лб::letitbit.net
::нф::nitroflare.com
::nf::nitroflare.com
::rg::rapidgator.com
::рг::rapidgator.com
::ul::uploaded.net
::ул::uploaded.net

::sf::http://www.superoforma.com/s/
::сд::http://www.superoforma.com/s/
::ШД:::D
::Ш):::)
::Ш*::: *
:::*::: *

::лс::либрусек
::--::—
::Ш*::: *

::)ш::);