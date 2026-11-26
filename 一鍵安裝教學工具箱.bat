@echo off
chcp 65001 >nul
title 全家備課與學習小幫手 - 教學工具箱一鍵安裝
echo ====================================================
echo   歡迎使用！正在檢查電腦裡的 Python 環境...
echo ====================================================
echo.

python --version >nul 2>&1
if errorlevel 1 (
    echo [提醒] 這台電腦還沒安裝 Python 喔！
    echo 請先打開 https://www.python.org/downloads/ 下載安裝，
    echo 安裝時記得勾選最下面的 "Add python.exe to PATH"，
    echo 裝好之後再回來點兩下這個檔案就可以了！
    echo.
    pause
    exit /b 1
)

echo [OK] 已找到 Python，開始自動安裝 15 個教學必備小工具...
echo （大約需要 1~3 分鐘，畫面跑字時請耐心等候，不要關掉視窗喔）
echo.

python -m pip install --upgrade pip
python -m pip install -r "%~dp0requirements_family.txt"

if errorlevel 1 (
    echo.
    echo [提醒] 安裝過程有一點小狀況，請把上面的英文畫面拍照或複製傳給 Gemini 小幫手，
    echo 它會立刻幫你解決！
    pause
    exit /b 1
)

echo.
echo ====================================================
echo   太棒了！全部教學小工具都安裝完成囉！
echo   你可以關掉這個視窗，回到 Gemini 繼續使用囉！
echo ====================================================
pause
