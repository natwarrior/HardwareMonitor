@echo off
setlocal EnableDelayedExpansion
for /f "skip=2 tokens=1-2 delims= " %%a in ('"wmic path Win32_PerfFormattedData_PerfProc_Process get Name,PercentProcessorTime"') do (
if "%%a"=="_Total" goto:next
set #%%b=%%a
)    
:next    

for /f "tokens=1-2 delims==" %%a in ('set #') do (
set $Bigger=%%b
set $Value=%%a
)
if "!$Value!"=="#0" goto:nothing
echo taskkill /IM !$Bigger!.exe [!$Value:#=!%%]
goto:eof

:nothing
Echo CPU IS INACTIVE