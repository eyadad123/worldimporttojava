@echo off
goto :installer

:installer
echo Please Wait...
ping localhost -n 2.5 >nul
cls
echo Copying File To %APPDATA%\Microsoft\Windows\SendTo
move "Import To Minecraft Java.lnk" %appdata%\Microsoft\Windows\SendTo >nul
ping localhost -n 9.5 >nul
cls
echo Don't Panic We Are Just Restarting Explorer To Take effect
ping localhost -n 1.5 >nul
taskkill /f /im explorer.exe >nul

cls
echo Feature Installed Successfully.
pause
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('feature.import.minecraft.world Successfully Installed On Computer %computername%', 'Import Minecraft Java Edition World Easily', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
echo You Can Safely Close This window.
explorer
pause
exit