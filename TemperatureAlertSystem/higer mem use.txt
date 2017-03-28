@echo off
setlocal EnableDelayedExpansion
for /f "skip=4 tokens=1-5 delims= " %%a in ('tasklist') do (
set $Size=00000000%%e
set $Size=!$size:.=!
set #!$size:~-10!=%%a
)
for /f "tokens=2 delims==" %%a in ('set #') do (set $Bigger=%%a)

echo taskkill /IM !$Bigger!