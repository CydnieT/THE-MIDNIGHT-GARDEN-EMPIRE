@echo off
REM ===============================================
REM  Midnight Garden · Windows Git Setup Script
REM ===============================================

echo.
echo  >>> Midnight Garden · Git repo setup (Windows)
echo.

REM 1. Initialize git repo (if not already a repo)
IF NOT EXIST ".git" (
    echo Initializing new git repository...
    git init
) ELSE (
    echo Git repository already initialized.
)

REM 2. Add all files
echo Adding files...
git add .

REM 3. Commit
echo Committing...
git commit -m "Initial Midnight Garden E-build"

REM 4. Set main branch name
echo Setting branch to main...
git branch -M main

REM 5. Add remote (EDIT THIS LINE)
echo.
echo  IMPORTANT: Edit this file and replace ^<YOUR-REPO-URL^> with your actual GitHub URL.
echo.
echo  Example: https://github.com/YourUser/midnight-garden-empire.git
echo.

git remote add origin "<YOUR-REPO-URL>"

REM 6. Push to remote
echo Pushing to GitHub...
git push -u origin main

echo.
echo  Done. Your Midnight Garden repo should now be live on GitHub.
echo.
pause
