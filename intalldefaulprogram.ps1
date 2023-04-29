#COPYING ZIP FILE TO LOCAL SERVER
Copy-Item -Path \\par-server\Softwares\Installer.zip -Destination C:\tmp
Write-Host 'Files copied to local network'

#UNZIPPING FILE
Expand-7Zip -ArchiveFileName C:\tmp\Installer.zip -TargetPath C:\tmp\softwares -Password 'Partronics@07'
Write-Host 'files unzipped' -ForegroundColor DarkGreen

#1. INSTALLING VLC MEDIA PLAYER 
Start-Process -FilePath C:\ -Verb runAs -ArgumentList "/S"
Write-Host 'vlc media player installed successfully!' 

#2. INSTALLING 7ZIP
Start-Process -FilePath C:\new\7zip.exe -Verb runAs -ArgumentList "/S"
Write-Host '7zip installed successfully!'

#3. INSTALLING ANYDESK
Start-Process -FilePath C:\new\AnyDesk.exe -Verb runAs -ArgumentList "/S"
Write-Host 'anydesk installed successfully!'

#4. INSTALLING CHROMESETUP
Start-Process -FilePath C:\tmp\softwares\chromesetup.exe -Verb runAs -ArgumentList "/S"
Write-Host 'chromesetup downloaded successfully!'

#5. INSTALLING NOTEPAD++
Start-Process -FilePath C:\tmp\softwares\npp.8.5.2.Installer.x64.exe -Verb runAs -ArgumentList "/S"
Write-Host 'notepad++ downloaded successfully!' 

#6. INSTALLING PUTTY
Start-Process -FilePath C:\tmp\softwares\putty.exe -Verb runAs -ArgumentList "/S"
Write-Host 'putty downloaded successfully!'

#7. INSTALLING PYTHON3
Start-Process -FilePath C:\tmp\softwares\Python3.exe -Verb runAs -ArgumentList "/S"
Write-Host 'python3 downloaded successfully!'

#8. INSTALLING VSCODESETUP
Start-Process -FilePath C:\tmp\softwares\VSCodeSetup.exe -Verb runAs -ArgumentList "/S"
Write-Host 'VSCodesetup downloaded successfully!'

#9. INSTALLING WINSCP
Start-Process -FilePath C:\tmp\softwares\WinSCP.exe -Verb runAs -ArgumentList "/S"
Write-Host 'WinSCP downloaded successfully!'

#10. INSTALLING DOT NET FRAMEWORK
Start-Process -FilePath C:\tmp\softwares\ndp.exe -Verb runAs -ArgumentList "/Q"
Write-Host 'NDP downloaded successfully!'

