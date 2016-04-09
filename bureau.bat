@echo off
set /a NUM = 0
:: se place sur le bureau
cd %USERPROFILE%\Desktop

:: Récupére le chemin courant
set currentpath1=%~dp0
:: Récupére le chemin du bureau
set currentpath=%USERPROFILE%\Desktop\


if not exist %currentpath1%rapport.txt echo //RAPPORT > %currentpath1%rapport.txt


call %currentpath1%Extension\PNG.bat
call %currentpath1%Extension\JPG.bat
call %currentpath1%Extension\BMP.bat
call %currentpath1%Extension\TIF.bat
call %currentpath1%Extension\MP4.bat
call %currentpath1%Extension\MKV.bat
call %currentpath1%Extension\AVI.bat
call %currentpath1%Extension\MP3.bat
call %currentpath1%Extension\WAV.bat
call %currentpath1%Extension\OGG.bat
call %currentpath1%Extension\OGG.bat
call %currentpath1%Extension\PNG.bat
call %currentpath1%Extension\JPG.bat
call %currentpath1%Extension\BMP.bat
call %currentpath1%Extension\GIF.bat
call %currentpath1%Extension\TIF.bat
call %currentpath1%Extension\MP3.bat
call %currentpath1%Extension\WAV.bat
call %currentpath1%Extension\AVI.bat
call %currentpath1%Extension\MKV.bat
call %currentpath1%Extension\MP4.bat
