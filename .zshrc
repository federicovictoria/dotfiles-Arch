# Created by newuser for 5.9
#================================>
# VARIABLES
#================================>
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=10000
HISTDUP=erase

setopt appendhistory
setopt share_history
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups 
setopt hist_find_no_dups
#================================>
# PLUGINS 
# ================================>
autoload -U compinit 
compinit
source /home/fer/.zsh/fzf-tab/fzf-tab.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#================================>
# STYLES 
#================================>
ZSH_HIGHLIGHT_STYLES[command]='fg=#98ffc0,bolditalic'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#98ffc0'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#98ffc0'
ZSH_HIGHLIGHT_STYLES[function]='fg=#98ffc0'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#c3d8ff'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#75c3ff'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#75c3ff'
ZSH_HIGHLIGHT_STYLES[path]='fg=#bfd4bf'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#bfd4bf'
ZSH_HIGHLIGHT_STYLES[error]='fg=#e4717a,bold'
#================================>
# KEYBINDS
#================================>
bindkey '^k' history-search-backward
bindkey '^j' history-search-forward
#================================>
# CONFIGS
#================================>
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
#================================>
#alias
#================================>
alias ls='ls --color=auto'
#================================>
# EVAL
#================================>
eval "$(fzf --zsh)"
eval "$(starship init zsh)"
#================================>
# EXPORT
#================================>
export PATH=$HOME/.local/bin:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
