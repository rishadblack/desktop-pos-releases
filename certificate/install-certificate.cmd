@echo off
rem Trusts the Sylloo code signing certificate so Windows recognises Sylloo POS as a known publisher.
rem Right-click this file and choose "Run as administrator".

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Please right-click install-certificate.cmd and choose "Run as administrator".
    pause
    exit /b 1
)

certutil -addstore Root "%~dp0sylloo-code-signing.cer"
certutil -addstore TrustedPublisher "%~dp0sylloo-code-signing.cer"

echo.
echo Done. Sylloo POS is now trusted on this computer.
pause
