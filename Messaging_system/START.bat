@echo off
REM Simple Messaging System - One-Click Setup & Start

echo.
echo ======================================
echo  Simple Messaging System
echo ======================================
echo.

REM Check if Node.js is installed
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo ERROR: Node.js is not installed!
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

echo Node.js found!
echo.

REM Check if npm modules are installed
if not exist "node_modules\" (
    echo Installing dependencies (first time only)...
    call npm install
    if %errorlevel% neq 0 (
        echo ERROR: Failed to install dependencies
        pause
        exit /b 1
    )
    echo Dependencies installed!
    echo.
) else (
    echo Dependencies already installed.
    echo.
)

echo Starting server...
echo.
echo Server running on: http://localhost:3000
echo.
echo Open this URL in your browser to start messaging!
echo To access from other devices, use: http://YOUR_COMPUTER_IP:3000
echo.
echo To find your computer IP, open Command Prompt and type: ipconfig
echo.

REM Start the server
call npm start
