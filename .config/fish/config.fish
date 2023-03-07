set -gx GPG_TTY (tty)
set -gx UID (id -u)
set -gx GID (id -g)
set -gx DOCKER_USER "(id -u):(id -g)"
set -gx TERM "xterm-256color"
set -gx LC_ALL "fr_FR.UTF-8"
set -gx LANG "fr_FR.UTF-8"

if not pgrep -f ssh-agent > /dev/null
	eval (ssh-agent -c)
	set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
	set -Ux SSH_AGENT_PID $SSH_AGENT_PID
	set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
end

complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'

alias gts='git status'
alias gtp='git pull --rebase'
alias gtc='git commit -S -m'
alias gta='git add'
alias gco='git checkout'
alias gfo='git fetch origin'
alias gffs='git flow feature start'
alias gfff='git flow feature finish'
alias upd='sudo nala update'
alias upg='sudo nala upgrade'
alias inst='yay -S'
alias rem='yay -Rns'
alias nv='nvim'

alias xl='exa -al --icons'

alias dcud='docker-compose up -d'
alias dcs='docker-compose stop'
alias dcd='docker-compose down'

alias t='tmux -2'
alias ta='t attach -t'
alias tn='t new -s'

alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'

### UNCOMMENT THIS PART TO ENABLE 1Password SSH-Agent ON WSL2
# Created by `pipx` on 2022-12-05 18:19:07
# set PATH $PATH /home/anthodev/.local/bin
# source ~/.agent-bridge_fish.sh
