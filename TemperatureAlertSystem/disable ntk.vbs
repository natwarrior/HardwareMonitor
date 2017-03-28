strComputer = "."

' This adds the Admin Run Function for Windows Vista and 7
' You must put this at the top below computer and End If at the
' very end of the script
If WScript.Arguments.length = 0 Then
Set objShell = CreateObject("Shell.Application")
objShell.ShellExecute "wscript.exe", """" & _
WScript.ScriptFullName & """" &_
" RunAsAdministrator", , "runas", 1
Else

Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\CIMV2")
Set colItems = objWMIService.ExecQuery( _
"SELECT * FROM Win32_NetworkAdapter Where NetEnabled = 'True'")

For Each objItem in colItems
Wscript.Echo "Name: " & objItem.Name & VbCrLf & _
"Description: " & objItem.Description
objItem.Disable
' Wscript.Echo
Next

MsgBox("All Network Adapters have been Disabled.")

End If
