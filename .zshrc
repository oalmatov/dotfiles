export PATH="/Applications/Ghostty.app/Contents/MacOS/:$PATH"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# ---------------- FUNCTIONS -------------------

function editrc() {
  nvim ~/.zshrc
  source ~/.zshrc }

# ---------------- ALIASES ---------------------
alias h='history | tail -30'
alias hg='history | grep'
alias glg='git lg -n16'
alias home='cd ~/'
alias fm='cd $fedmatch'
alias activate='source venv/bin/activate'
alias n='nvim'
alias vi="nvim"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

alias pull="git remote update --prune && git pull --ff-only"
alias refresh="git fetch origin main:main && git rebase main"

vimrc='/Users/oalmatov/.config/nvim/lua/oalmatov'
fedmatch='/Users/oalmatov/Documents/projects/fedmatch_v2'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/oalmatov/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/oalmatov/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/oalmatov/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/oalmatov/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
