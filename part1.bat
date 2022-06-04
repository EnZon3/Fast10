@echo off

echo Welcome to the Express Windows 10 installer
echo Press any key to start the semi-automatic setup

pause > nul

diskpart /s diskpart1.txt

echo While DISM is 60% of the way through applying the image,
echo open regedit and load 2 hives: C:\windows\System32\config\SYSTEM and name it sys, and then load C:\windows\System32\config\SOFTWARE and name it soft, and then load KeyChanges.reg, which is located in the root directory of this CD.
echo Press any key to continue.

pause > nul

cd /d D:

cd sources

dism /apply-image /imagefile:install.esd /index:1 /applydir:C:\

bcdboot C:\Windows /s W:

echo From this point on, a lot of stuff is manual. You will need to perform the Command prompt exploit while services are starting and run part2.bat which is in the ISO file, and after that you also need to perform the OOBE skip. To do the OOBE skip, press CTRL+SHIFT+F3, then go to the directory of this ISO file and then run OOBESkip.bat

echo Press any key to reboot your computer

pause > nul

shutdown -r -f -t 0