#==================================export=====================================#
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:/usr/local/go/bin
export PATH=$HOME/.bin:$PATH
# export PATH=$PATH:/home/rozhelluk/.python3.11/bin$PATH

ZSH_THEME="my2"
source $ZSH/oh-my-zsh.sh
plugins=(git extract pip python tmux sudo aliases )
# eval $(thefuck --alias)
eval PYTHONDONTWRITEBYTECODE=1

#==================================unalias====================================#
#ls
unalias l    #size,show type,human readable
unalias la   #long list,show almost all,show type,human readable
unalias ll   #long list
unalias ls 
unalias lsa 
# py
# unalias py

#==================================bindkey====================================#
bindkey -s '^o' 'xdg-open .^M'

#==================================alias=====================================#
alias thefuck=/home/rozhelluk/.local/bin/thefuck
alias disk=gdu
alias o='open'
alias cls="clear"
alias ht='htop'
alias nt='nvtop'
alias vimconfig="v ~/.config/nvim/lua/user/init.lua"
alias v='/usr/bin/nvim'
alias bpy='bpython'
alias e="mkv env && vrun env"
alias cat='/usr/bin/batcat --theme gruvbox-dark'
alias wi='which'
alias xe='xdg-open .'
alias cdd='cd ~/Завантаження/'
alias set="set_alacritty_opacity" 
alias ae='source .env/bin/activate'
alias de="deactivate"
alias www='/opt/firefox/firefox'
alias update='_ apt update -y && echo " " && _ apt upgrade -y && apt list --upgradable  && echo " " && _ apt autoremove -y'
alias s="v ~/.zshrc"
alias .s="source ~/.zshrc"
alias t="tmux"
alias k8000='sudo fuser -k 8000/tcp'
alias .='printf "\e[5 q"'
alias tlauncher='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia java -jar ~/.TLauncher-2.86.jar'
alias sqlstudio="~/Загальнодоступні/SQLiteStudio/sqlitestudio"
# for dotfiles git repo
alias .dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 
# for aur repos
alias aur=paru

# general use
alias ls='exa'                                                         # ls
alias l='exa -lbF --git'                                               # list, size, type, git
alias ll='exa -lbGF --git'                                             # long list
alias llm='exa -lbGF --git --sort=modified'                            # long list, modified date sort
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'  # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list

# speciality views
alias lS='exa -1'			                                                  # one column, just names
alias lt='exa --tree --level=2'      # tree

# alias ae='. env/bin/activate'
# alias py=python3.11
# alias python3=python3.11
# alias python=python3.11
# export PATH=$HOME/.bin
# export PATH=$HOME/.bin:$PATH
# Path to your oh-my-zsh installation.
# alias tlauncher='java -jar /home/ro3helluk/Шаблони/TLauncher-2.86/TLauncher-2.86.jar'
# alias lg='lazygit'
# alias lvim="/home/ro3helluk/.local/bin/lvim"
# alias v="/home/ro3helluk/.local/bin/lvim"
# aliasilvimconfig="v ~/.config/lvim/config.lua"

