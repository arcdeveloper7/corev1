goto %acr%

:help

echo "core" show your core version
echo "*package-update" update your core
echo "ipc" see your ip
echo "exit" exit term
echo "connection-status" see your connection status
echo "remove" delete reply
echo "cs" clear


goto ext

:ipc
ipconfig
arp -a
goto ext

:core
echo Core version 1
echo Acroterm Default data
goto ext

:exit
exit

:connection-status
set "connection=[ONLINE]"
ping -l 1 -n 1 8.8.8.8 > Chace || set "connection=[OFFLINE]"
echo %connection%
goto ext

:remove
set /p rm=File name to delete : 
del %rm%.bat || goto fdel
goto ext
:fdel
echo Failed to delete data
goto ext

:cs
cls
goto ext

:ext