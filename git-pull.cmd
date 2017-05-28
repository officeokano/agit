@echo off
    for /d %%i in (*) do (
    pushd %%i
    echo checking directory: %%i
    if exist .\.git\nul (
        echo pull from remote
        git pull
    ) else (
       echo %%i is not a git repository
    )
    echo.
    popd
)
