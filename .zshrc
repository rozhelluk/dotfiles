alias .dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 

# export PATH=$PATH:/home/rozhelluk/.python3.11/bin$PATH
# alias py=python3.11
# alias python3=python3.11
# alias python=python3.11
alias dick=gdu

export PATH=$PATH:/usr/local/go/bin
export PATH=$HOME/.bin:$PATH
# export PATH=$HOME/.bin
# export PATH=$HOME/.bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
alias thefuck=/home/rozhelluk/.local/bin/thefuck

# ZSH_THEME="my"
ZSH_THEME="my2"
plugins=(git extract pip python)
# plugins=(extract pip python)

source $ZSH/oh-my-zsh.sh

alias o='open'
# alias tlauncher='java -jar /home/ro3helluk/Шаблони/TLauncher-2.86/TLauncher-2.86.jar'
# alias lg='lazygit'
alias cls="clear"
# alias lvim="/home/ro3helluk/.local/bin/lvim"
alias ht='htop'
alias nt='nvtop'
# alias v="/home/ro3helluk/.local/bin/lvim"

alias vimconfig="v ~/.config/nvim/lua/user/init.lua"
# aliasilvimconfig="v ~/.config/lvim/config.lua"

alias v='/usr/bin/nvim'

alias bpy='bpython'
alias e="mkv env && vrun env"


alias cat='/usr/bin/batcat --theme gruvbox-dark'
alias wi='which'
alias xe='xdg-open .'
alias cdd='cd ~/Завантаження/'

alias set="set_alacritty_opacity" 

# alias ae='. env/bin/activate'
alias ae='source .env/bin/activate'
alias de="deactivate"
alias www='/opt/firefox/firefox'
alias update='_ apt update -y && echo " " && _ apt upgrade -y && apt list --upgradable  && echo " " && _ apt autoremove -y'

alias s="v ~/.zshrc"
alias .s="source ~/.zshrc"

alias t="tmux"

alias k8000='sudo fuser -k 8000/tcp'

bindkey -s '^o' 'xdg-open .^M'
alias .='printf "\e[5 q"'

alias tlauncher='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia java -jar ~/.TLauncher-2.86.jar'
alias sqlstudio="~/Загальнодоступні/SQLiteStudio/sqlitestudio"

unalias py
eval $(thefuck --alias)
eval PYTHONDONTWRITEBYTECODE=1
