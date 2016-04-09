@echo off
title Ajout en cours... 0%%
mode con cols=40 lines=1
color F0
set currentpath2=%~dp0
set currentpath2=%currentpath2:\extension=%
set currentpath=%~dp0
echo Ajout en cours...
title Ajout en cours... 3%%
@ping localhost -n 2 >nul
set /p extension=<%currentpath%ajout.txt
set /p extension2=<%currentpath%addliste.txt
set /p chemin=<%currentpath%chemin.txt
for /F "delims=" %%a in ('type "%currentpath%liste.txt"') do (
if '%extension%'=='%%a' goto :exist
)
title Ajout en cours... 9%%
@ping localhost -n 1 >nul
echo Fichier = "%currentpath%%extension%.bat" > %currentpath%11245742150.vbs
echo LigneCherche = "%%33chemin33%%" >> %currentpath%11245742150.vbs
echo Path = "%chemin%" >> %currentpath%11245742150.vbs
echo Dim fso >> %currentpath%11245742150.vbs
echo Dim oRegEx >> %currentpath%11245742150.vbs
echo Dim monFichier >> %currentpath%11245742150.vbs
echo Dim sStream >> %currentpath%11245742150.vbs
echo Dim sNewStream >> %currentpath%11245742150.vbs
echo Set fso = CreateObject("Scripting.FileSystemObject") >> %currentpath%11245742150.vbs
echo Set oRegEx = New RegExp >> %currentpath%11245742150.vbs
echo oRegEx.Global = True >> %currentpath%11245742150.vbs
echo oRegEx.Pattern = LigneCherche >> %currentpath%11245742150.vbs
echo Set monFichier = fso.OpenTextFile(Fichier,1) >> %currentpath%11245742150.vbs
echo sStream = monFichier.ReadAll >> %currentpath%11245742150.vbs
echo monFichier.Close >> %currentpath%11245742150.vbs
echo sNewStream = oRegEx.Replace(sStream, Replace(Path,"\","/")) >> %currentpath%11245742150.vbs
echo If InStr(sNewStream,vbLf)=1 Then sNewStream = Replace(sNewStream, Replace(Path,"\","/"),1,1) >> %currentpath%11245742150.vbs
echo Set monFichier = fso.OpenTextFile(Fichier,2) >> %currentpath%11245742150.vbs
echo monFichier.Write sNewStream >> %currentpath%11245742150.vbs
echo monFichier.Close >> %currentpath%11245742150.vbs
echo Fichier = "%currentpath%%extension%.bat" > %currentpath%11445220.vbs
echo LigneCherche = "%%extension%%" >> %currentpath%11445220.vbs
echo Path = "%extension%" >> %currentpath%11445220.vbs
echo Dim fso >> %currentpath%11445220.vbs
echo Dim oRegEx >> %currentpath%11445220.vbs
echo Dim monFichier >> %currentpath%11445220.vbs
echo Dim sStream >> %currentpath%11445220.vbs
echo Dim sNewStream >> %currentpath%11445220.vbs
title Ajout en cours... 10%%
@ping localhost -n 1 >nul
echo Set fso = CreateObject("Scripting.FileSystemObject") >> %currentpath%11445220.vbs
title Ajout en cours... 12%%
@ping localhost -n 1 >nul
echo Set oRegEx = New RegExp >> %currentpath%11445220.vbs
title Ajout en cours... 15%%
@ping localhost -n 1 >nul
echo oRegEx.Global = True >> %currentpath%11445220.vbs
title Ajout en cours... 20%%
@ping localhost -n 1 >nul
echo oRegEx.Pattern = LigneCherche >> %currentpath%11445220.vbs
title Ajout en cours... 35%%
@ping localhost -n 1 >nul
echo Set monFichier = fso.OpenTextFile(Fichier,1) >> %currentpath%11445220.vbs
echo sStream = monFichier.ReadAll >> %currentpath%11445220.vbs
title Ajout en cours... 40%%
@ping localhost -n 1 >nul
echo monFichier.Close >> %currentpath%11445220.vbs
title Ajout en cours... 41%%
@ping localhost -n 1 >nul
echo sNewStream = oRegEx.Replace(sStream, Replace(Path,"\","/")) >> %currentpath%11445220.vbs
title Ajout en cours... 54%%
@ping localhost -n 1 >nul
echo If InStr(sNewStream,vbLf)=1 Then sNewStream = Replace(sNewStream, Replace(Path,"\","/"),1,1) >> %currentpath%11445220.vbs
echo Set monFichier = fso.OpenTextFile(Fichier,2) >> %currentpath%11445220.vbs
title Ajout en cours... 62%%
@ping localhost -n 1 >nul
echo monFichier.Write sNewStream >> %currentpath%11445220.vbs
echo monFichier.Close >> %currentpath%11445220.vbs
if not exist "%currentpath%%extension%.bat" (
title Ajout en cours... 75%%
@ping localhost -n 1 >nul
for /F "delims=" %%a in ('type "%currentpath%add.txt"') do (
echo %%a>> "%currentpath%%extension%.bat"
)
title Ajout en cours... 95%%
@ping localhost -n 1 >nul
start %currentpath%11445220.vbs
start %currentpath%11245742150.vbs
for /F "delims=" %%a in ('type "%currentpath%addliste.txt"') do (
echo %%a>> "%currentpath%liste.txt"
)
title Ajout en cours... 99%%
@ping localhost -n 3 >nul
echo %extension% = true>> %currentpath2%Extension.ini
echo call %%currentpath1%%Extension\%extension%.bat>> %currentpath2%bureau.bat
title Ajout en cours... 100%%
@ping localhost -n 2 >nul
exit
) else ( title error... Cette extension n'est pas indiqu‚e dans "liste.txt" mais elle est d‚j… ajout‚e ! )
@ping localhost -n 2 >nul
exit
:exist
echo x = msgbox("Cette extension a deja ete ajouter",0+48+0,"Erreur..") > %currentpath%affichage.vbs
start %currentpath%affichage.vbs
exit