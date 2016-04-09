Fichier = "C:\Users\lemmy\Desktop\Bureau\001.txt" 
LigneCherche = "=" 
Path = "h" 
Dim fso 
Dim oRegEx 
Dim monFichier 
Dim sStream 
Dim sNewStream 
Set fso = CreateObject("Scripting.FileSystemObject") 
Set oRegEx = New RegExp 
oRegEx.Global = True 
oRegEx.Pattern = LigneCherche 
Set monFichier = fso.OpenTextFile(Fichier,1) 
sStream = monFichier.ReadAll 
monFichier.Close 
sNewStream = oRegEx.Replace(sStream, Replace(Path,"\","/")) 
If InStr(sNewStream,vbLf)=1 Then sNewStream = Replace(sNewStream, Replace(Path,"\","/"),1,1) 
Set monFichier = fso.OpenTextFile(Fichier,2) 
monFichier.Write sNewStream 
monFichier.Close 
