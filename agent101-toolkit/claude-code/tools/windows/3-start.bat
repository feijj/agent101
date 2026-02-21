@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
color 0B
title Claude Code 之路 · 第三步：启动！

echo ========================================================
echo.
echo   Claude Code 之路 · 第三步：启动！
echo.
echo ========================================================
echo.

:: Workspace selection
set "DEFAULT_WORKSPACE=%USERPROFILE%\my-first-project"

echo 📁 工作区设置
echo.
echo    「工作区」是 Claude Code 为你写代码的地方。
echo    它是你电脑上的一个文件夹，所有生成的文件都会保存在里面。
echo    每个项目建议使用一个独立的工作区。
echo.
echo    默认工作区: %DEFAULT_WORKSPACE%
echo.
set /p custom_workspace="   直接回车使用默认工作区，或输入自定义路径: "

if "!custom_workspace!"=="" (
    set "WORKSPACE=%DEFAULT_WORKSPACE%"
) else (
    set "WORKSPACE=!custom_workspace!"
)

if not exist "!WORKSPACE!" mkdir "!WORKSPACE!"
echo.
echo ✅ 工作区已就绪: !WORKSPACE!
echo.
echo ========================================================
echo   🚀 正在启动 Claude Code
echo   📂 工作区: !WORKSPACE!
echo.
echo   你可以开始用中文和它聊天了！
echo   试试说："帮我写一个贪吃蛇网页游戏"
echo ========================================================
echo.

pushd "!WORKSPACE!"
call claude
popd
pause
