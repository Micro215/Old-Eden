@echo off

setlocal

set REPO_URL=https://github.com/Micro215/Old-Eden/archive/refs/heads/main.zip

curl -L -o mods.zip %REPO_URL%

rmdir .\mods /s /q

powershell -command "Expand-Archive -Path 'mods.zip' -DestinationPath 'mods_temp'"

del mods.zip

mkdir .\mods

xcopy .\mods_temp\Old-Eden-main\.minecraft\mods .\mods /s /e /h

rmdir .\mods_temp /s /q

echo mods updated

pause