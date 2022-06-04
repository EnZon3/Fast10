@echo off

echo This will skip the OOBE and create a user called Administator. Press any key to continue.

pause

reg import OOBESkip.reg

net user Administator /active:yes

echo Press any key to restart.

pause

shutdown -t 5 -r -f