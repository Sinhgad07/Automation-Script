Copy-Item -Path \\par-server\Softwares\Installer.zip -Destination C:\tmp\softwareinstaller.zip
Write-Host 'Files copied to local network'

Expand-7Zip -ArchiveFileName C:\softwareinstaller.zip -TargetPath C:\tmp\softwares -Password 'Partronics@07'
Write-Host 'files unzipped' -ForegroundColor DarkGreen

Start-Process -FilePath C:\tmp\ -Verb runAs -ArgumentList "/S"
Write-Host 'vlc media player installed successfully!' 

Start-Process -FilePath C:\new\7zip.exe -Verb runAs -ArgumentList "/S"
Write-Host '7zip installed successfully!'

Start-Process -FilePath C:\new\AnyDesk.exe -Verb runAs -ArgumentList "/S"
Write-Host 'anydesk installed successfully!'

Start-Process -FilePath C:\tmp\softwares\chromesetup.exe -Verb runAs -ArgumentList "/S"
Write-Host 'chromesetup downloaded successfully!'

Start-Process -FilePath C:\tmp\softwares\npp.8.5.2.Installer.x64.exe -Verb runAs -ArgumentList "/S"
Write-Host 'notepad++ downloaded successfully!' 

Start-Process -FilePath C:\tmp\softwares\putty.exe -Verb runAs -ArgumentList "/S"
Write-Host 'putty downloaded successfully!'

Start-Process -FilePath C:\tmp\softwares\Python3.exe -Verb runAs -ArgumentList "/S"
Write-Host 'python3 downloaded successfully!'

Start-Process -FilePath C:\tmp\softwares\VSCodeSetup.exe -Verb runAs -ArgumentList "/S"
Write-Host 'VSCodesetup downloaded successfully!'

Start-Process -FilePath C:\tmp\softwares\WinSCP.exe -Verb runAs -ArgumentList "/S"
Write-Host 'WinSCP downloaded successfully!'




