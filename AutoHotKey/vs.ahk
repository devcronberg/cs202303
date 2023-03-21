#NoEnv
SendMode Input  
SetWorkingDir %A_ScriptDir%  

#1::
Send System.Diagnostics.Debugger.Break();{Enter}
return

#2::
clipboard:= ""
SendInput, ^c
ClipWait, 2
code := "Console.WriteLine(" . clipboard . ");"
clipboard := code
Sleep 200
Send, {End}{Enter}
Send, %code%
return

