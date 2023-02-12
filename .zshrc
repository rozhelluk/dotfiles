#
ZSH_DISABLE_COMPFIX=true
# fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

ZSH_THEME="my2"
plugins=(git
  # vi-mode
  #zsh-vi-mode
  extract
  pip
  python
  tmux
  sudo
  aliases
  #zsh-autosuggestions
  #zsh-syntax-highlighting
  #zsh-completions
)
source $ZSH/oh-my-zsh.sh
#eval $(thefuck --alias)
eval PYTHONDONTWRITEBYTECODE=1

#==================================unalias====================================#
#ls
# unalias l    #size,show type,human readable
# unalias la   #long list,show almost all,show type,human readable
# unalias ll   #long list
# unalias ls 
# unalias lsa 
# py
# unalias py

#==================================bindkey====================================#
bindkey -s '^o' 'xdg-open .^M'

#==================================alias=====================================#

alias aliases=acs

alias cls="clear -x"
# nvim | config
alias vimconfig="v ~/.config/nvim/lua/user/init.lua"
alias v='/usr/bin/nvim'

alias disk=gdu
alias ht='htop'
alias nt='nvtop'
alias bat='/bin/bat --theme gruvbox-dark'
alias wi='which'

# open dir / files
alias o='xdg-open'
# alias xe='xdg-open .'
# 
alias xe='nohup nautilus . > /dev/null 2>&1&'
alias xr='ranger'
alias cdd='cd ~/Downloads/'

# alacritty
alias 'set'="set_alacritty_opacity2" 

# for python | wenv
# export PATH=$PATH:/home/rozhelluk/.python3.11/bin$PATH
alias bpy='bpython'
alias e="mkv env && vrun env"
alias ae='source .env/bin/activate'
alias de="deactivate"
# alias .="source"

alias www='waterfox'
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
alias p=paru

# exa (ls)

alias l='exa -1 --icons'
alias ll='exa -1 --icons -a'
alias la='exa -l -a --git'
alias ls='exa --icons'
#
alias lS='exa' # ls
alias L='exa -lbGF --git --icons' # long list
alias llm='exa -lbGF --git --sort=modified --icons' # long list, modified date sort
alias lx='exa -lbhHiUmuSa@ --time-style=long-iso --git --color-scale --icons' # all + extended list
# # speciality views
alias lt='exa --tree --level=2 --icons' # tree
alias lh='exa --icons -d .*'
alias ld='exa --icons -D'


alias lr='exa -1 --icons -r'
alias llr='exa -1 --icons -a -r'
alias lar='exa -l -a -r --git'
alias lsr='exa --icons -r'
#
alias lSr='exa -r' # ls
alias Lr='exa -lbGF --git --icons -r' # long list
alias llmr='exa -lbGF --git --sort=modified --icons -r' # long list, modified date sort
alias lxr='exa -lbhHiUmuSa@ --time-style=long-iso --git --color-scale --icons -r' # all + extended list
# # speciality views
alias ltr='exa --tree --level=2 --icons -r' # tree
alias lhr='exa --icons -r -d .*'
alias ldr='exa --icons -D -r'


# alias lg='lazygit'
alias hacks='v ~/.config/rozhelluk/hacks.txt'

cx(){ cd "$@" && ll;}

alias f='fuck'
alias j='cd'

alias c="xclip -sel clip"
alias paste="xclip -out -sel clip"
#source /home/rozhelluk/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
