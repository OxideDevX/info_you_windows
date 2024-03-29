@echo off
title Forensic Information Scanner(creatred by OxideDevX)
echo ############################################################
echo ####                                                    ####
echo #######    Forensic  Information Scanner             #######   
echo ####                                                    ####
echo ############################################################  
echo.
echo Gathering information...


whoami > %COMPUTERNAME%-IS.txt
whoami /priv >> %COMPUTERNAME%-IS.txt
echo %username% >> %COMPUTERNAME%-IS.txt
net user >> %COMPUTERNAME%-IS.txt
cmdkey /list >> %COMPUTERNAME%-IS.txt
doskey /history >>%COMPUTERNAME%-IS.txt

:: user part

systeminfo >> %COMPUTERNAME%-IS.txt
dir C:\ >> %COMPUTERNAME%-IS.txt
dir E:\ >> %COMPUTERNAME%-IS.txt
dir F:\ >> %COMPUTERNAME%-IS.txt
dir C:\Users >> %COMPUTERNAME%-IS.txt
dir C:\"Program Files" >> %COMPUTERNAME%-IS.txt
dir C:\"Program Files (x86)" >> %COMPUTERNAME%-IS.txt
dir C:\Users >>%COMPUTERNAME%-IS.txt
tree c:\ /f | more >> %COMPUTERNAME%-IS.txt
tree e:\ /f | more >> %COMPUTERNAME%-IS.txt
tree f:\ /f | more >> %COMPUTERNAME%-IS.txt
tree d:\ /f | more >> %COMPUTERNAME%-IS.txt
tree a:\ /f | more >> %COMPUTERNAME%-IS.txt
tasklist >> %COMPUTERNAME%-IS.txt
wmic startup list full >> %COMPUTERNAME%-IS.txt

::Network part

ipconfig /all >> %COMPUTERNAME%-IS.txt
getmac >> %COMPUTERNAME%-IS.txt
netsh lan show interfaces >> %COMPUTERNAME%-IS.txt
netsh wlan show networks mode=bssid >> %COMPUTERNAME%-IS.txt
netsh wlan show profiles >> %COMPUTERNAME%-IS.txt
netsh wlan export profile folder=. key=clear
netstat -ao >> %COMPUTERNAME%-IS.txt
net view >> %COMPUTERNAME%-IS.txt
arp -a >> %COMPUTERNAME%-IS.txt

::Software Information part
wmic product get /format:csv > %COMPUTERNAME%-IS.csv
exit
