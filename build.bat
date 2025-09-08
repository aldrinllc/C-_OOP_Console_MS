@echo off
echo === Compiling Project ===

:: Set output executable name
set OUTPUT=OOP_Project.exe

:: Compile all .cpp files in src and lib
g++ -std=c++17 -Wall -Ilib src\*.cpp lib\*.cpp -o %OUTPUT%

:: Check if compilation succeeded
if %errorlevel% neq 0 (
    echo Compilation failed!
    pause
    exit /b %errorlevel%
)

echo Compilation successful!
echo Running %OUTPUT%...
%OUTPUT%
pause
