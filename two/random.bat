@echo off
set /P var="Enter first number: "
set /P var1="Enter second number: "
set minimum=%var%
set maximum=%var1%
for /l %%i in (1,1,10) do (
    call :gen
)
pause&&exit
:gen
set /a number=%random%%%(maximum-minimum+1)+minimum
echo %number% >> numbers.txt
exit /b