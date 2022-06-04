oobe\windeploy

net user /add user

net localgroup /add users user

echo Reg file 2 going now, unpause to start reg part 2

pause

reg import KeyChanges2.reg