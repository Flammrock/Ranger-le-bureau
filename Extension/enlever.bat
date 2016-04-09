@echo off
title Enlèvement en cours... 0%%
@ping localhost -n 1 >nul
color F0
set currentpath2=%~dp0
set currentpath2=%currentpath2:\extension=%
set currentpath=%~dp0
echo Enlèvement en cours...
title Enlèvement en cours... 3%%
@ping localhost -n 2 >nul
::vérification
title Enlèvement en cours... 5%%
@ping localhost -n 1 >nul
set /p enlever=<%currentpath%enlever.txt
for /F "delims=" %%a in ('type "%currentpath%liste.txt"') do (
if '%enlever%'=='%%a' goto :ok
title Enlèvement en cours... 12%%
@ping localhost -n 1 >nul
echo %enlever%
echo %%a
)
title Enlèvement en cours... 16%%
@ping localhost -n 1 >nul
echo x = msgbox("Cette extension n'a pas été ajoutée",0+48+0,"Erreur..") > %currentpath%affichage2.vbs
start %currentpath%affichage2.vbs
exit
:ok
title Enlèvement en cours... 12%%
@ping localhost -n 1 >nul
for /F "delims=" %%a in ('type "%currentpath%addliste.txt"') do (
title Enlèvement en cours... 23%%
@ping localhost -n 1 >nul
Copy %currentpath%liste.txt FIC.TRA
title Enlèvement en cours... 36%%
@ping localhost -n 1 >nul
Find /V /I "%%a" < FIC.TRA > %currentpath%liste.txt
Del FIC.TRA
title Enlèvement en cours... 43%%
@ping localhost -n 1 >nul
)
title Enlèvement en cours... 56%%
@ping localhost -n 1 >nul
Del %currentpath%%enlever%.bat
title Enlèvement en cours... 69%%
@ping localhost -n 1 >nul
Copy %currentpath2%Extension.ini FIC.TRA
title Enlèvement en cours... 72%%
@ping localhost -n 1 >nul
Find /V /I "%enlever%" < FIC.TRA > %currentpath2%Extension.ini
title Enlèvement en cours... 84%%
@ping localhost -n 1 >nul
title Enlèvement en cours... 96%%
@ping localhost -n 2 >nul
title Enlèvement en cours... 99%%
@ping localhost -n 3 >nul
Del FIC.TRA
title Enlèvement en cours... 100%%
@ping localhost -n 2 >nul