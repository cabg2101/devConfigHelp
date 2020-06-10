# 'ls' commands
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# GUI Programs
alias clion='/opt/clion-2020.1.2/bin/clion.sh'

# Windows shortcuts
alias chrome='cmd.exe /C "%programfiles(x86)%\Google\Chrome\Application\chrome.exe" &> /dev/null &'
alias ntpd++='cmd.exe /C "%programfiles%\Notepad++\notepad++.exe" &> /dev/null &'
alias outlook='cmd.exe /C "%programfiles(x86)%\Microsoft Office\root\Office16\OUTLOOK.EXE" &> /dev/null &'
alias sourcetree='cmd.exe /C "%localappdata%\SourceTree\app-3.3.8\SourceTree.exe" &> /dev/null &'
alias teams='cmd.exe /C "%localappdata%\Microsoft\Teams\Update.exe --processStart "Teams.exe"" &> /dev/null &'
alias vcxsrv='cmd.exe /C "%userprofile%\.vcxsrv\vcxsrv.exe" :0 -ac -terminate -clipboard -lesspointer -multiwindow -wgl -silent-dup-error &> /dev/null &'
