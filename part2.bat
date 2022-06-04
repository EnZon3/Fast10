oobe\windeploy

net user /add user

net localgroup /add users user

echo Reg file 2 going now, press any key to start reg part 2

pause > nul

reg import KeyChanges2.reg

echo done, do not reboot