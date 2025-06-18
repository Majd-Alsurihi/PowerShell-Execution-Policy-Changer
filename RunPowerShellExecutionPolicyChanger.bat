@echo off
:: RunNetworkAdapterRestarter.bat

:: Check for administrator privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

powershell -NoExit -ExecutionPolicy Bypass -File "%~dp0PowerShell Execution Policy Changer.ps1"
pause