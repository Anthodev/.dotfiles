set -gx GPG_TTY (tty)
set -gx UID (id -u)
set -gx GID (id -g)
set -gx DOCKER_USER "(id -u):(id -g)"
set -gx TERM xterm-256color
set -gx LC_ALL C.UTF-8
set -gx BAT_THEME Catppuccin_Macchiato

complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'

set -lx IS_WSL (eval uname -r)
if string match -q -- '*WSL2' $IS_WSL
    alias ssh='ssh.exe'
    alias ssh-add='ssh-add.exe'
end

alias gpf='git push --force'
alias gfo='git fetch origin'
alias grd='git rebase develop'
alias gr2='git rebase -i HEAD~2'
alias grc='git rebase --continue'
alias gtc='gitmoji -c'

alias upd='sudo paru'
alias inst='paru -S'
alias rem='paru -Rns'

alias nv='nvim'
alias cat='bat'
# alias zed="WAYLAND_DISPLAY='' zeditor "

alias xl='eza -al --icons'

alias task='go-task'
alias j='just'

# alias docker='podman'
alias dcud='docker compose up -d'
alias dcs='docker compose stop'
alias dcd='docker compose down'

alias t='tmux -2'
alias ta='t attach -t'
alias tn='t new -s'

alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'

fish_add_path -g ~/.local/bin
