@echo off
setlocal enabledelayedexpansion

echo Starting Django Project...

:: Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo Error: Python is not installed!
    exit /b
)

:: Check and create virtual environment if not exists
if not exist "venv\Scripts\activate.bat" (
    echo Creating virtual environment...
    python -m venv venv
)

:: Activate virtual environment
call venv\Scripts\activate

:: Verify virtual environment activation
if errorlevel 1 (
    echo Error: Failed to activate virtual environment!
    exit /b
)

:: Upgrade pip
echo Updating pip...
python -m pip install --upgrade pip

:: Install dependencies from requirements.txt
if exist "requirements.txt" (
    echo Installing dependencies...
    pip install -r requirements.txt
) else (
    echo Warning: requirements.txt not found! Installing Django and DRF...
    pip install django djangorestframework
)

:: Check if manage.py exists
if not exist "manage.py" (
    echo Error: manage.py not found! Please check your project directory.
    exit /b
)

:: Run makemigrations
echo Running makemigrations...
python manage.py makemigrations

:: Run migrate
echo Running migrate...
python manage.py migrate

:: Start Django server
echo Starting Django server...
start /B python manage.py runserver

:: Open browser with localhost
timeout /t 3 >nul
start http://127.0.0.1:8000

echo Django is running at: http://127.0.0.1:8000/

endlocal
pause
