@echo off
setlocal

set proc=Win32_PerfFormattedData_PerfProc_Process
set "wmi=wmic path %proc% get Name^,PercentProcessorTime"
for /f "skip=1 tokens=*" %%a in ('"%wmi%"^|findstr /i /v /g:Excludes.txt') do (
   for /f "tokens=2 delims= " %%b in ( "%%a" ) do if %%b NEQ 0 echo %%a
)