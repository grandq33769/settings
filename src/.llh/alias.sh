alias ag='alias | grep'
alias dp='docker ps'
alias dpa='docker ps -a'
alias dr='docker run -it -w="/root/"'
alias ds='docker start'
alias de='docker exec -it' 
alias di='docker images'
alias dsa='docker stop $(docker ps -a -q)'
alias duc='du -hs $(ls -A) | sort -h'
alias lg='ls|grep'
alias l='ls -lrth'
alias cwd='printf "%q\n" "$(pwd)" | pbcopy'
alias gz='git cz'
alias rm='safe-rm'
alias python='/usr/local/bin/python3'
alias gas='ga `git diff --name-only --staged`'
