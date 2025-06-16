@echo off
echo =============================================================
echo Config VS Code for Python development
echo Copy keybindings.json, settings.json and python.json files
echo =============================================================
if not exist "%APPDATA%\Code\User" powershell New-Item -ItemType Directory -Force -Path "%APPDATA%\Code\User"
powershell Copy-Item -Path "keybindings.json" -Destination "%APPDATA%\Code\User" -Force
powershell Copy-Item -Path "settings.json" -Destination "%APPDATA%\Code\User" -Force
if not exist "%APPDATA%\Code\User\snippets" powershell New-Item -ItemType Directory -Force -Path "%APPDATA%\Code\User\snippets"
powershell Copy-Item -Path "python.json" -Destination "%APPDATA%\Code\User\snippets" -Force
echo *****************
echo Finished! Use it!
echo *****************
pause