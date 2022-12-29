ZSH_DISABLE_COMPFIX=true
#==================================export=====================================#
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:/usr/local/go/bin
export PATH=$HOME/.bin:$PATH
export MANPAGER='nvim +Man!'
export TERM="alacritty"
# export PATH=$HOME/.bin

ZSH_THEME="my2"
plugins=(git extract pip python tmux sudo aliases zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
eval $(thefuck --alias)
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
alias cls="clear"
# nvim | config
alias vimconfig="v ~/.config/nvim/lua/user/init.lua"
alias v='/usr/bin/nvim'

alias disk=gdu
alias ht='htop'
alias nt='nvtop'
alias bat='/bin/bat --theme gruvbox-dark'
alias wi='which'

# open dir / files
alias o='open'
alias xe='xdg-open .'
alias cdd='cd ~/Downloads/'

# alacritty
alias set="set_alacritty_opacity2" 

# for python | wenv
# export PATH=$PATH:/home/rozhelluk/.python3.11/bin$PATH
alias bpy='bpython'
alias e="mkv env && vrun env"
alias ae='source .env/bin/activate'
alias de="deactivate"
# alias .="source"

alias www='/opt/firefox/firefox'
# # update for deb
# alias update='_ apt update -y && echo " " && _ apt upgrade -y && apt list --upgradable  && echo " " && _ apt autoremove -y'

# shell config
alias s="v ~/.zshrc"
alias .s="source ~/.zshrc"

#tmux
alias t="tmux"
# for django kill localhost
alias k8000='sudo fuser -k 8000/tcp'

# alias .='printf "\e[5 q"'
#
# alias tlauncher='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia java -jar ~/.TLauncher-2.86.jar'
# alias sqlstudio="~/Загальнодоступні/SQLiteStudio/sqlitestudio"

# for dotfiles git repo
alias .dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 
# for aur repos
alias aur=paru

# exa (ls)
alias lS='exa' # ls
alias l='exa -lbF --git --icons' # list, size, type, git
alias ll='exa -lbFa --git --icons' # long list
alias L='exa -lbGF --git --icons' # long list
alias llm='exa -lbGF --git --sort=modified --icons' # long list, modified date sort
alias la='exa -lbhHiUmuSa --time-style=long-iso --git --color-scale --icons' # all list
alias lx='exa -lbhHiUmuSa@ --time-style=long-iso --git --color-scale --icons' # all + extended list
# speciality views
alias ls='exa -1 --icons' # one column, just names
alias lt='exa --tree --level=2 --icons' # tree
alias lh='exa --icons -d .*'
alias ld='exa --icons -D'

# alias lg='lazygit'
alias hacks='v ~/.config/hacks.txt'

cx(){ cd "$@" && ll;}

alias f='fuck'
alias j='cd'
