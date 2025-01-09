@echo off & setlocal enabledelayedexpansion

set DIRS_TO_BE_CLEANED=document
set FILES_TO_BE_SAVED=.pdf .tex latexmkrc


:::::::::::::::::::::: DO NOT CHANGE SOMETHING BELOW THIS LINE ::::::::::::::::::::::

::>--- CONSTANTS ---<::
set SCRIPT_DIR=%~dp0
set EXECUTION_DIR=%cd%


::>--- FUNCTIONS ---<::
:: Skip to the "main" part, as the functions shouldn't be executed before the main part
goto :main

:clean_dir
    :: Change to the directory to be cleaned and save its path
    cd /d %SCRIPT_DIR%%~1
    set current_dir=%cd%

    echo Cleaning '%current_dir%'
    :: Loop through all files and delete the ones which don't use a file ending of the ones specified in %FILES_TO_BE_SAFED%
    for /f "delims=" %%F in ('dir /b /a-d ^| findstr /vile "%FILES_TO_BE_SAVED%"') do (
        del "%%F"
        echo Removed file '%%F'
    )
    echo.
exit /b


::>--- MAIN ---<::
:main
:: Loop through all directories to be cleaned
for %%d in (%DIRS_TO_BE_CLEANED%) do (
    call :clean_dir %%d
)
cd /d %EXECUTION_DIR%