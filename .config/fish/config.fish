set -gx GPG_TTY (tty)
set -gx UID (id -u)
set -gx GID (id -g)
set -gx DOCKER_USER "(id -u):(id -g)"
set -gx TERM "xterm-256color"
set -gx LC_ALL "en_US.UTF-8"
set -gx LANG "en_US.UTF-8"

if not pgrep -f ssh-agent > /dev/null
	eval (ssh-agent -c)
	set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
	set -Ux SSH_AGENT_PID $SSH_AGENT_PID
	set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
end

complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'

alias gts='git status'
alias gtp='git pull --rebase'
alias gtr='git rebase'
alias gtc='git commit -S -m'
alias gco='git checkout'
alias gfo='git fetch origin'
alias gffs='git flow feature start'
alias gfff='git flow feature finish'
alias sag='sudo apt update'
alias sagu='sudo apt upgrade'
alias sai='sudo apt install'
alias nv='nvim'
alias lg='lazygit'

alias xl='exa -al --icons'

alias up='docker-compose up -d'
alias stop='docker-compose stop'
alias down='docker-compose down'

alias t='tmux -2'
alias ta='t attach -t'
alias tn='t new -s'

alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
