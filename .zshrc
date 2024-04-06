#              _                    _     _____ _____ 
#             | |                  | |   |  _  |  _  |
#  _ __   __ _| | ___ __ ___   __ _| | __| |_| |\ V / 
# | '_ \ / _` | |/ / '_ ` _ \ / _` | |/ /\____ |/ _ \ 
# | | | | (_| |   <| | | | | | (_| |   < .___/ / |_| |
# |_| |_|\__,_|_|\_\_| |_| |_|\__,_|_|\_\\____/\_____/
# 
# My zsh config file
# 


# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle :compinstall filename '/home/nakmak98/.zshrc'

autoload -Uz compinit
compinit

autoload -Uz promptinit
promptinit
prompt redhat

autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs


HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -v
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:cdr:*:*' menu selection
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


# add my aliases 
if [[ -r ~/.bash_aliases ]]; then
    . ~/.bash_aliases
fi

# use ag as search programm for fzf to allow serch in hidden directories 
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .cache -g ""'

# my local /bin stuff must in PATH
export PATH=~/.local/bin:~/.cargo/bin:$PATH
eval "$(zoxide init zsh)"
source ~/.dotbare/dotbare.plugin.zsh

