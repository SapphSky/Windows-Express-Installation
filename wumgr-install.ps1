$Url = "https://github.com/DavidXanatos/wumgr/releases/download/v1.1/WuMgr_v1.1b.zip"
$DownloadZipFile = "$env:TEMP" + $(Split-Path -Path $Url -Leaf)

echo "Downloading WuMgr to $env:TEMP"
Invoke-WebRequest -Uri $Url -OutFile $DownloadZipFile -TimeoutSec 30

& echo "Launching WuMgr..."
Start-Process -FilePath $DownloadZipFile\wumgr.exe

& echo "Creating Shortcut on Desktop..."
Invoke-WebRequest -Uri "https://github.com/SapphSky/Windows-Express-Installation/raw/main/Relaunch%20WuMgr.lnk" -OutFile "$env:HOMEPATH\Desktop\Relaunch WuMgr.lnk" -TimeoutSec 15
