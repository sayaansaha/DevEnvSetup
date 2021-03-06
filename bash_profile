# Git branch in prompt.
parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

shopt -s extglob

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

#intellij command line
alias ..='cd ..'
alias ws='webstorm'
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias l='ls'
alias ui='$ANDROID_HOME/tools/bin/uiautomatorviewer'
alias adb='$ANDROID_HOME/platform-tools/adb'
alias gc='git commit'
alias ga='git add -A'
alias gp='git push'
alias gst='git status'
alias gl='git log'
