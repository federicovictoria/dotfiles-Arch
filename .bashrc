#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

#================================>
# VARIABLES
#================================>
HISTSIZE=10000
HISTFILE=~/.bash_history
HISTFILESIZE=10000

# Control de duplicados y espacios al inicio del comando
# ignoreboth = ignoredups + ignorespace
# erasedups = borra duplicados previos en el historial
HISTCONTROL=ignoreboth:erasedups

# Opciones de historial en Bash (equivalentes a setopt)
shopt -s histappend       # Añade al historial en vez de sobrescribir (appendhistory)
shopt -s checkwinsize     # Actualiza el tamaño de la ventana después de cada comando

# Sincroniza el historial inmediatamente entre terminales abiertas (share_history)
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

#================================>
# PLUGINS & AUTOCOMPLETADO
#================================>
# Autocompletado nativo de Bash
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Plugins de Zsh adaptados a paquetes de Bash
# Nota: Asegúrate de tener instalados 'bash-autosuggestions' o 'ble.sh' si deseas el resaltado en tiempo real.
[ -f /usr/share/bash-autosuggestions/bash-autosuggestions.bash ] && source /usr/share/bash-autosuggestions/bash-autosuggestions.bash

# Integración con FZF
[ -f /usr/share/fzf/key-bindings.bash ] && source /usr/share/fzf/key-bindings.bash
[ -f /usr/share/fzf/completion.bash ] && source /usr/share/fzf/completion.bash

#================================>
# KEYBINDS (Readline)
#================================>
# Asignación de Ctrl+K y Ctrl+J para buscar en el historial por prefijo
bind '"\C-k": history-search-backward'
bind '"\C-j": history-search-forward'

#================================>
# CONFIGS
#================================>
# Búsqueda insensible a mayúsculas/minúsculas al presionar Tab
bind 'set completion-ignore-case on'

# Mostrar lista de coincidencias de colores al autocompletar
bind 'set colored-stats on'

#================================>
# ALIAS
#================================>
alias ls='ls --color=auto'
alias zed='zeditor'

#================================>
# EVAL
#================================>
# Inicialización de Starship para Bash
eval "$(starship init bash)"

#================================>
# EXPORT
#================================>
export PATH=$HOME/.local/bin:$PATH

if [ -d "/home/linuxbrew/.linuxbrew/bin" ]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if command -v fnm &> /dev/null; then
  eval "$(fnm env --use-on-cd)"
fi