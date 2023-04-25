$PATH1 = 'E:\Testing.zip'
$PATH2 = 'E:\unzip'
$PATH3 = 'E:\Automation Script'

#Converting zip folder to unzip folder
Expand-Archive -LiteralPath $PATH1 -DestinationPath $PATH2


#Copying unzip folder to another location
Copy-Item -Path $PATH2 -Destination $PATH3 -Recurse


#Removing earlier zip folder
Remove-Item $PATH1