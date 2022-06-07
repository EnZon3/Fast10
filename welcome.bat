@echo off

cls

echo Windows 10 Express Installer
echo created by EnZon3

:start
echo.
echo 1. Start the express setup
echo 2. Open the README file
echo 3. Exit the setup
set choice=
set /p choice=Choose now.
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto startSetup
if '%choice%'=='2' goto readme
if '%choice%'=='3' goto exitSetup
echo "%choice%" is not valid, try again
echo.
goto start

:startSetup
start part1.bat
exit


:readme
notepad README.txt


:exitSetup
exit