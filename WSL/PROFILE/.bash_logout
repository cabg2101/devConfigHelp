# ~/.bash_logout: executed by bash(1) when login shell exits.

# Kill X11 Server
taskkill.exe /im "vcxsrv.exe" /f >nul 2>&1

# when leaving the console clear the screen to increase privacy

if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi
