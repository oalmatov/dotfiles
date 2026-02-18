export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

DISABLE_AUTO_UPDATE="true"

plugins=(git common-aliases)

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias h='history | tail -30'
alias hg='history | grep'
alias glg='git lg -n16'
alias home='cd ~/'
alias fm='cd $fedmatch'
alias n='nvim'
alias vi="nvim"
alias lg="lazygit"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias pull="git remote update --prune && git pull --ff-only"
alias refresh="git fetch origin dev && git rebase -i origin/dev"
alias src="source .venv/bin/activate"
alias mg="./manage.py makemigrations && ./manage.py migrate"
alias create-superuser='DJANGO_SUPERUSER_USERNAME=admin DJANGO_SUPERUSER_PASSWORD=admin ./manage.py createsuperuser --noinput --email=admin@admin.com'
alias resetdb="dropdb local && createdb local && mg && create-superuser"
alias recent-branches='git branch --sort=-committerdate | head -n 10'
alias work='cd $HOME/work/vals/'
alias plat='cd $HOME/work/vals/platform'
alias bench='cd $HOME/work/vals/benchmarks'
alias taiga='cd $HOME/work/vals/taiga'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export EDITOR="nvim"
