@echo off
chcp 65001 >nul
echo ========================================================
echo   Touchpad Palm Visualizer - 啟動本機預覽伺服器
echo ========================================================
cd /d "%~dp0"
start "" http://localhost:8080
echo 正在啟動伺服器 http://localhost:8080 ...
python -m http.server 8080
pause
