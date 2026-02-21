@echo off
chcp 65001 >nul
color 0B
title Claude Code 之路 · 第一步：准备运行环境
echo ========================================================
echo.
echo   Claude Code 之路 · 第一步：准备运行环境
echo.
echo ========================================================
echo.

node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ 未检测到 Node.js。
    echo    请先前往 https://nodejs.org/zh-cn/download/ 下载安装。
    echo    安装完成后请关闭此窗口并重新运行本脚本。
    pause
    exit /b
)
for /f "tokens=*" %%i in ('node -v') do echo ✅ Node.js %%i

echo.
echo 正在配置国内加速镜像...
call npm config set registry https://registry.npmmirror.com/ >nul 2>&1
echo    NPM → 淘宝镜像 ✅

echo.
echo ========================================================
echo   ✅ 环境准备完成！请回到教程，继续下一步。
echo ========================================================
pause
