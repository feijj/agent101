@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul 2>&1
cls
echo ========================================================
echo.
echo   🧠 Claude Code 之路 · 第二步：安装并配置
echo.
echo ========================================================
echo.

:: Install Claude Code
echo ⚙️  正在安装 Claude Code...
call npm install -g @anthropic-ai/claude-code
echo.

:: Ask for model provider
echo ========================================================
echo 选择你的 AI 大脑：
echo.
echo   [1] DeepSeek
echo   [2] Kimi（国内版）
echo   [3] Kimi（海外版）
echo   [4] 智谱（国内版）
echo   [5] 智谱（海外版）
echo   [6] MiniMax（国内版）
echo   [7] MiniMax（海外版）
echo   [8] 通义千问 Qwen（国内版）
echo   [9] 通义千问 Qwen（海外版）
echo.
set /p provider="请输入数字 (1-9): "
echo.
set /p apikey="请粘贴你的 API Key: "

:: Write Claude Code settings per provider
set "CLAUDE_DIR=%USERPROFILE%\.claude"
if not exist "%CLAUDE_DIR%" mkdir "%CLAUDE_DIR%"

if "%provider%"=="1" goto :deepseek
if "%provider%"=="2" goto :kimi_cn
if "%provider%"=="3" goto :kimi_intl
if "%provider%"=="4" goto :zhipu_cn
if "%provider%"=="5" goto :zhipu_intl
if "%provider%"=="6" goto :minimax_cn
if "%provider%"=="7" goto :minimax_intl
if "%provider%"=="8" goto :qwen_cn
if "%provider%"=="9" goto :qwen_intl
echo ❌ 输入无效
pause
exit /b

:deepseek
(
echo {
echo   "env": {
echo     "ANTHROPIC_BASE_URL": "https://api.deepseek.com/anthropic",
echo     "ANTHROPIC_AUTH_TOKEN": "%apikey%",
echo     "API_TIMEOUT_MS": "600000",
echo     "CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC": "1",
echo     "ANTHROPIC_MODEL": "deepseek-chat",
echo     "ANTHROPIC_SMALL_FAST_MODEL": "deepseek-chat",
echo     "ANTHROPIC_DEFAULT_SONNET_MODEL": "deepseek-chat",
echo     "ANTHROPIC_DEFAULT_OPUS_MODEL": "deepseek-chat",
echo     "ANTHROPIC_DEFAULT_HAIKU_MODEL": "deepseek-chat"
echo   }
echo }
) > "%CLAUDE_DIR%\settings.json"
goto :done

:kimi_cn
(
echo {
echo   "env": {
echo     "ANTHROPIC_BASE_URL": "https://api.moonshot.cn/anthropic",
echo     "ANTHROPIC_AUTH_TOKEN": "%apikey%",
echo     "API_TIMEOUT_MS": "3000000",
echo     "CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC": "1",
echo     "ANTHROPIC_MODEL": "kimi-k2-thinking-turbo",
echo     "ANTHROPIC_SMALL_FAST_MODEL": "kimi-k2-thinking-turbo",
echo     "ANTHROPIC_DEFAULT_SONNET_MODEL": "kimi-k2-thinking-turbo",
echo     "ANTHROPIC_DEFAULT_OPUS_MODEL": "kimi-k2-thinking-turbo",
echo     "ANTHROPIC_DEFAULT_HAIKU_MODEL": "kimi-k2-thinking-turbo",
echo     "CLAUDE_CODE_SUBAGENT_MODEL": "kimi-k2-thinking-turbo"
echo   }
echo }
) > "%CLAUDE_DIR%\settings.json"
goto :done

:kimi_intl
(
echo {
echo   "env": {
echo     "ANTHROPIC_BASE_URL": "https://api.moonshot.ai/anthropic",
echo     "ANTHROPIC_AUTH_TOKEN": "%apikey%",
echo     "API_TIMEOUT_MS": "3000000",
echo     "CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC": "1",
echo     "ANTHROPIC_MODEL": "kimi-k2-thinking-turbo",
echo     "ANTHROPIC_SMALL_FAST_MODEL": "kimi-k2-thinking-turbo",
echo     "ANTHROPIC_DEFAULT_SONNET_MODEL": "kimi-k2-thinking-turbo",
echo     "ANTHROPIC_DEFAULT_OPUS_MODEL": "kimi-k2-thinking-turbo",
echo     "ANTHROPIC_DEFAULT_HAIKU_MODEL": "kimi-k2-thinking-turbo",
echo     "CLAUDE_CODE_SUBAGENT_MODEL": "kimi-k2-thinking-turbo"
echo   }
echo }
) > "%CLAUDE_DIR%\settings.json"
goto :done

:zhipu_cn
(
echo {
echo   "env": {
echo     "ANTHROPIC_BASE_URL": "https://open.bigmodel.cn/api/anthropic",
echo     "ANTHROPIC_AUTH_TOKEN": "%apikey%",
echo     "API_TIMEOUT_MS": "3000000",
echo     "CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC": "1",
echo     "ANTHROPIC_DEFAULT_HAIKU_MODEL": "glm-4.5-air",
echo     "ANTHROPIC_DEFAULT_SONNET_MODEL": "glm-4.7",
echo     "ANTHROPIC_DEFAULT_OPUS_MODEL": "glm-5"
echo   }
echo }
) > "%CLAUDE_DIR%\settings.json"
goto :done

:zhipu_intl
(
echo {
echo   "env": {
echo     "ANTHROPIC_BASE_URL": "https://api.z.ai/api/anthropic",
echo     "ANTHROPIC_AUTH_TOKEN": "%apikey%",
echo     "API_TIMEOUT_MS": "3000000",
echo     "CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC": "1",
echo     "ANTHROPIC_DEFAULT_HAIKU_MODEL": "glm-4.5-air",
echo     "ANTHROPIC_DEFAULT_SONNET_MODEL": "glm-4.7",
echo     "ANTHROPIC_DEFAULT_OPUS_MODEL": "glm-5"
echo   }
echo }
) > "%CLAUDE_DIR%\settings.json"
goto :done

:minimax_cn
(
echo {
echo   "env": {
echo     "ANTHROPIC_BASE_URL": "https://api.minimaxi.com/anthropic",
echo     "ANTHROPIC_AUTH_TOKEN": "%apikey%",
echo     "API_TIMEOUT_MS": "3000000",
echo     "CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC": "1",
echo     "ANTHROPIC_MODEL": "MiniMax-M2.5",
echo     "ANTHROPIC_SMALL_FAST_MODEL": "MiniMax-M2.5",
echo     "ANTHROPIC_DEFAULT_SONNET_MODEL": "MiniMax-M2.5",
echo     "ANTHROPIC_DEFAULT_OPUS_MODEL": "MiniMax-M2.5",
echo     "ANTHROPIC_DEFAULT_HAIKU_MODEL": "MiniMax-M2.5"
echo   }
echo }
) > "%CLAUDE_DIR%\settings.json"
goto :done

:minimax_intl
(
echo {
echo   "env": {
echo     "ANTHROPIC_BASE_URL": "https://api.minimax.io/anthropic",
echo     "ANTHROPIC_AUTH_TOKEN": "%apikey%",
echo     "API_TIMEOUT_MS": "3000000",
echo     "CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC": "1",
echo     "ANTHROPIC_MODEL": "MiniMax-M2.5",
echo     "ANTHROPIC_SMALL_FAST_MODEL": "MiniMax-M2.5",
echo     "ANTHROPIC_DEFAULT_SONNET_MODEL": "MiniMax-M2.5",
echo     "ANTHROPIC_DEFAULT_OPUS_MODEL": "MiniMax-M2.5",
echo     "ANTHROPIC_DEFAULT_HAIKU_MODEL": "MiniMax-M2.5"
echo   }
echo }
) > "%CLAUDE_DIR%\settings.json"
goto :done

:qwen_cn
(
echo {
echo   "env": {
echo     "ANTHROPIC_BASE_URL": "https://dashscope.aliyuncs.com/apps/anthropic",
echo     "ANTHROPIC_AUTH_TOKEN": "%apikey%",
echo     "API_TIMEOUT_MS": "3000000",
echo     "CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC": "1",
echo     "ANTHROPIC_MODEL": "qwen3.5-plus",
echo     "ANTHROPIC_SMALL_FAST_MODEL": "qwen3-coder-next",
echo     "ANTHROPIC_DEFAULT_SONNET_MODEL": "qwen3.5-plus",
echo     "ANTHROPIC_DEFAULT_OPUS_MODEL": "qwen3.5-plus",
echo     "ANTHROPIC_DEFAULT_HAIKU_MODEL": "qwen3-coder-next"
echo   }
echo }
) > "%CLAUDE_DIR%\settings.json"
goto :done

:qwen_intl
(
echo {
echo   "env": {
echo     "ANTHROPIC_BASE_URL": "https://dashscope-intl.aliyuncs.com/apps/anthropic",
echo     "ANTHROPIC_AUTH_TOKEN": "%apikey%",
echo     "API_TIMEOUT_MS": "3000000",
echo     "CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC": "1",
echo     "ANTHROPIC_MODEL": "qwen3.5-plus",
echo     "ANTHROPIC_SMALL_FAST_MODEL": "qwen3-coder-next",
echo     "ANTHROPIC_DEFAULT_SONNET_MODEL": "qwen3.5-plus",
echo     "ANTHROPIC_DEFAULT_OPUS_MODEL": "qwen3.5-plus",
echo     "ANTHROPIC_DEFAULT_HAIKU_MODEL": "qwen3-coder-next"
echo   }
echo }
) > "%CLAUDE_DIR%\settings.json"
goto :done

:done
echo ✅ Claude Code 配置已写入: %CLAUDE_DIR%\settings.json

:: Bypass onboarding
set "CLAUDE_JSON=%USERPROFILE%\.claude.json"
if not exist "%CLAUDE_JSON%" (
    echo {"hasCompletedOnboarding": true} > "%CLAUDE_JSON%"
)

echo ✅ 登录绕过已配置
echo.
echo ========================================================
echo   🎉 配置完成！
echo   请运行第三步脚本来启动你的 AI 编程助手。
echo ========================================================
pause
