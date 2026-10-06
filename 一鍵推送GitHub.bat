@echo off
chcp 65001 >nul
echo ========================================================
echo   Touchpad Palm Visualizer - 一鍵推送至 GitHub
echo ========================================================
cd /d "%~dp0"
git add .
git commit -m "update: latest changes for Touchpad Palm Visualizer"
git push origin main
echo.
echo 推送完成！GitHub Pages 將在 1 分鐘內自動更新線上網站。
pause
