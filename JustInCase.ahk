#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launches 1 instance of this script
;~ #NoTrayIcon
if !WinExist(Trolling.ahk)
	Run,  Startup\I'm Impressed.lnk
	ExitApp
else
	ExitApp