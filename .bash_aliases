#              _                    _     _____ _____ 
#             | |                  | |   |  _  |  _  |
#  _ __   __ _| | ___ __ ___   __ _| | __| |_| |\ V / 
# | '_ \ / _` | |/ / '_ ` _ \ / _` | |/ /\____ |/ _ \ 
# | | | | (_| |   <| | | | | | (_| |   < .___/ / |_| |
# |_| |_|\__,_|_|\_\_| |_| |_|\__,_|_|\_\\____/\_____/
# 
# My bash and zsh aliases
# 

# updating like in Arch
alias paru='sudo apt update && sudo apt upgrade'
alias apt='sudo apt'
 
alias ls='exa -la --icons'

# search file to open in neovim
alias fzv='vim $(fzf --height 40% --layout=reverse)'

# pretty cat 
alias cat='batcat'
alias man='batman'

# git shortcuts
alias gs='git status'
alias ga='git add'
alias gc='git commit'
