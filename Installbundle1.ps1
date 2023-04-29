#creating a Floder
New-Item -Path 'C:\DownloadPrograms' -ItemType Directory;
Write-Host "Folder is created..." -ForegroundColor Magenta


#7ZIP 
Write-Host "Downloading 7Zip ......." -ForegroundColor Yellow ;
Invoke-WebRequest  'https://7-zip.org/a/7z2201-x64.exe' -OutFile 'C:\DownloadPrograms\7zip.exe';
Write-Host "7zip downloaded successfully." -ForegroundColor Green

#Vscode 
Write-Host "Downloading VsCode......." -ForegroundColor Yellow;
Invoke-WebRequest -Uri 'https://az764295.vo.msecnd.net/stable/704ed70d4fd1c6bd6342c436f1ede30d1cff4710/VSCodeUserSetup-x64-1.77.3.exe' -OutFile 'C:\DownloadPrograms\VSCodeSetup.exe';
Write-Host "VsCode downloaded successfully." -ForegroundColor Green

#chrome
Write-Host "Downloading GoogleChrome......."-ForegroundColor Yellow ;
Invoke-WebRequest 'https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B315F748B-1EE3-1392-3ACF-8C1A18E97672%7D%26lang%3Den%26browser%3D4%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26brand%3DCHBF%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe' -OutFile 'C:\DownloadPrograms\chromesetup.exe';

Write-Host "GoogleChrome downloaded successfully." -ForegroundColor Green

#notepad++
Write-Host "Downloading Notepad-plus-plus......."-ForegroundColor Yellow ;
Invoke-WebRequest -Uri 'https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.5.2/npp.8.5.2.Installer.x64.exe' -OutFile 'C:\DownloadPrograms\npp.8.5.2.Installer.x64.exe';
Write-Host "Notepad++ downloaded successfully." -ForegroundColor Green

#VLC Player
Write-Host "Downloading VLC player......."-ForegroundColor Yellow ;
Invoke-WebRequest -Uri 'https://mirror.freedif.org/videolan/vlc/3.0.18/win64/vlc-3.0.18-win64.exe' -OutFile 'C:\DownloadPrograms\vlc.exe';
Write-Host "Vlc downloaded successfully." -ForegroundColor Green

#WinSCP
Write-Host "Downloading WinSCP......."-ForegroundColor Yellow ;
Invoke-WebRequest -Uri 'https://winscp.net/download/WinSCP-5.21.8-Setup.exe' -OutFile 'C:\DownloadPrograms\WinSCP.exe';
Write-Host "WinSCP downloaded successfully." -ForegroundColor Green

#PUTTY
Write-Host "Downloading Putty.......";
Invoke-WebRequest -Uri 'https://the.earth.li/~sgtatham/putty/0.78/w64/putty.exe' -OutFile 'C:\DownloadPrograms\putty.exe';
Write-Host "Putty downloaded successfully." -ForegroundColor Green

#pYTHON3
Write-Host "Downloading python......."-ForegroundColor Yellow ;
Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.11.3/python-3.11.3-amd64.exe' -OutFile 'C:\DownloadPrograms\Python3.exe';
Write-Host "Python3 downloaded successfully." -ForegroundColor Green

#Anydesk
Write-Host "Downloading Anydesk......."-ForegroundColor Yellow ;
Invoke-WebRequest -Uri 'https://download.anydesk.com/AnyDesk.exe' -OutFile 'C:\DownloadPrograms\AnyDesk.exe';
Write-Host "AnyDesk downloaded successfully." -ForegroundColor Green

#Converting Folder to zip file
Compress-7Zip -ArchiveFileName 'C:\Installer.zip' -Path 'C:\DownloadPrograms' -Format Zip -Password 'Partronics@07';
Write-Host "ZipFile is Created" -ForegroundColor Cyan

#Copying zip file to server
Copy-Item -Path C:\Installer.zip -Destination \\par-server\Softwares
Write-Host "Zip file is copied to server.."

#Deleting existing folder and zip file from system
Remove-Item -Path 'C:\DownloadPrograms';
Remove-Item -Path 'C:\Installer.zip';
Write-Host "DownloadInstaller Folder and Zip file is deleted from system.." -ForegroundColor Red