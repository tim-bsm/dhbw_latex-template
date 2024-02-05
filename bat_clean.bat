@echo off & setlocal enabledelayedexpansion

set DIRS_TO_BE_CLEANED=settings\watermark document settings\config
set FILE_ENDINGS=-blx.bib .aux .bcf* .fdb_latexmk .fls .glo .lof .log .run.xml .synctex* .toc .lot .bbl* .for .ist .blg .lol


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
    :: Loop through all file endings
    for %%e in (%FILE_ENDINGS%) do (
        set file_path=%current_dir%\*%%e
        :: Check if there are files with the ending %%e, if so, remove them
        if exist !file_path! (
            del /q !file_path!
            echo Removed all files with the ending '%%e'
        )
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