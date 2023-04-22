#Installing the 7zip.exe file silently
Start-Process -FilePath "C:\Users\Dell\Downloads\7z2201-x64.exe" -Verb runAs -ArgumentList "/S"

#Downloading and installing silently google chrome

$Path = $env:TEMP; $Installer = "chrome_installer.exe";
Invoke-WebRequest "http://dl.google.com/chrome/install/375.126/chrome_installer.exe" -OutFile $Path\$Installer; 
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait; Remove-Item $Path\$Installer

#Downloading and installing silently vs code 

$URL ="https://code.visualstudio.com/docs/?dv=win"
Invoke-WebRequest -Uri $URL -OutFile "E:\PowerShell Script\VSCodeUserSetup-x64-1.77.3.exe"
Start-Process -FilePath 'E:\PowerShell Script\VSCodeUserSetup-x64-1.77.3.exe' -Verb runsAS -ArgumentList "/S"

