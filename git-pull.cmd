@echo off
    for /d %%i in (*) do (
    pushd %%i
    if exist .\.git\nul (
        echo pull %%i from remote
        git pull
        echo.
    )
    popd
)
