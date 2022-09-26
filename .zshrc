#!/bin zsh
# ---- fgxhammer zsh conf ----
# ---- environment variables ----

export SCRIPTS="$HOME/dev/config-files/scripts"
export NVM_DIR="$HOME/.nvm"
export RUBY_DIR="$(brew --prefix)/opt/ruby/bin"
export PYENV_DIR="$HOME/.pyenv/shims"
export VM_DEV="$HOME/Virtual Machines.localized/dev.vmwarevm/dev.vmx"
export MYVIMRC="$HOME/.config/nvim/init.lua"
export EDITOR="nvim"

# ---- path ----

export PATH="$SCRIPTS:"\
"$NVM_DIR:"\
"$RUBY_DIR:"\
"$PYENV_DIR:"\
"$PATH"

# ---- colorize less cmd ----

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# ---- aliases ----

alias v='nvim'
alias vv='nvim .'
alias vim='nvim'
alias cl='clear'
alias ls='ls -la --color'
alias l='exa'
alias ls='exa -l'
alias ll='exa -la'
alias la='exa -a'
alias dev='npm run dev'
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'
alias soz='source ~/.zshrc'
alias sov='source ~/.vimrc'
alias sot='tmux source ~/.tmux.conf'
alias g='git'
alias ga='git add'
alias gaa='git add .'
alias gd='git diff'
alias s='git status -sb'
alias gs='git status'
alias gc='git commit'
alias gcm='git commit -m'
alias gl='git log --graph --name-status  --date=relative'
alias gre='git reflog'
alias gp='git pull'
alias psh='git push'
alias gco='git checkout'
alias gcob='git checkout -b'
alias stash='git stash -u'
alias pop='git stash pop'
alias stashls='git stash list'
alias save='git stash save -u'
alias ghrepo="gh repo view --web"
alias ghpr="gh pr view --web"

# ---- load zoxide ----

eval "$(zoxide init zsh)"

# ---- load nvm ----

[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# ---- load pyenv ----

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# ---- prompt ----

eval "$(starship init zsh)"

# autoload -Uz vcs_info # enable vcs_info
# precmd () { vcs_info } # always load before displaying the prompt
# zstyle ':vcs_info:*' formats ' (%F{magenta}%s%f)[%F{yellow}%b%f]' # git(main)
# PS1='%B%F{blue}%n%f%b@%B%F{blue}%m%f%b:%1~$vcs_info_msg_0_ %B%F{green}$%f%b '

