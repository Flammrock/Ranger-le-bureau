@echo off
set /a NUM = 0
:: Récupère le chemin courant (dossier parent)
set currentpath2=%~dp0
set currentpath3=%~dp0
set currentpath2=%currentpath2:\extension=%
:: Récupère le chemin du bureau
set currentpath="%USERPROFILE%\Desktop\"
:: chemin triage
set /p chemin=<%currentpath3%chemin.txt
:: Vérification
for /f "tokens=* delims=" %%a in ('type %currentpath2%extension.ini^| Find /i "WAV"') do echo %%a > %currentpath2%001.txt
setlocal EnableDelayedExpansion
type nul > "%currentpath2%CaB.txt"
for /F "delims=" %%A in ('type "%currentpath2%001.txt"') do (
  set row=%%A
  set row=!row: =!
  echo.!row!>> "%currentpath2%CaB.txt"
)
del "%currentpath2%001.txt"
ren "%currentpath2%CaB.txt"  001.txt
echo Fichier = "%currentpath2%001.txt" > %currentpath3%1120.vbs
echo LigneCherche = "=" >> %currentpath3%1120.vbs
echo Path = "h" >> %currentpath3%1120.vbs
echo Dim fso >> %currentpath3%1120.vbs
echo Dim oRegEx >> %currentpath3%1120.vbs
echo Dim monFichier >> %currentpath3%1120.vbs
echo Dim sStream >> %currentpath3%1120.vbs
echo Dim sNewStream >> %currentpath3%1120.vbs
echo Set fso = CreateObject("Scripting.FileSystemObject") >> %currentpath3%1120.vbs
echo Set oRegEx = New RegExp >> %currentpath3%1120.vbs
echo oRegEx.Global = True >> %currentpath3%1120.vbs
echo oRegEx.Pattern = LigneCherche >> %currentpath3%1120.vbs
echo Set monFichier = fso.OpenTextFile(Fichier,1) >> %currentpath3%1120.vbs
echo sStream = monFichier.ReadAll >> %currentpath3%1120.vbs
echo monFichier.Close >> %currentpath3%1120.vbs
echo sNewStream = oRegEx.Replace(sStream, Replace(Path,"\","/")) >> %currentpath3%1120.vbs
echo If InStr(sNewStream,vbLf)=1 Then sNewStream = Replace(sNewStream, Replace(Path,"\","/"),1,1) >> %currentpath3%1120.vbs
echo Set monFichier = fso.OpenTextFile(Fichier,2) >> %currentpath3%1120.vbs
echo monFichier.Write sNewStream >> %currentpath3%1120.vbs
echo monFichier.Close >> %currentpath3%1120.vbs
start %currentpath3%1120.vbs
@ping localhost -n 2 >nul
setlocal EnableDelayedExpansion
type nul > "%currentpath2%CaB.txt"
for /F "delims=" %%A in ('type "%currentpath2%001.txt"') do (
  set row=%%A
  set row=!row:WAVh=!
  echo.!row!>> "%currentpath2%CaB.txt"
)
del "%currentpath2%001.txt"
ren "%currentpath2%CaB.txt"  001.txt
set /p ok=<%currentpath2%001.txt
echo WAV = %ok%
del "%currentpath2%001.txt"
if "%ok%"=="true" goto :true
goto :false
:true
:: ####### CREATION DES REPERTOIRE - Triage
if exist "%currentpath%*.WAV" MD "%currentpath%%chemin%"
:: ####### DEPLACEMENTS FICHIERS
:: Copie des fichiers selon une extention précise
FOR %%f IN ("%currentpath%*.WAV" ) DO ( 
move %%f "%currentpath%%chemin%"
:: variable pour annulation
set /a NUM = %NUM% + 1
set WAV%NUM% = %%f
:: info > rapport.txt
echo [%date%] %time% - %%f >> "%currentpath2%rapport.txt"
:: supprimer le path
setlocal EnableDelayedExpansion
type nul > "%currentpath2%CaB.txt"
for /F "delims=" %%A in ('type "%currentpath2%rapport.txt"') do (
  set row=%%A
  set row=!row:%currentpath2%=!
  echo.!row!>> "%currentpath2%CaB.txt"
)
del "%currentpath2%rapport.txt"
ren "%currentpath2%CaB.txt"  rapport.txt
)
:false
