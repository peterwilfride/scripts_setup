# add to path
export PATH=/usr/lib/jvm/java-20-openjdk/bin/javac:$HOME/.local/bin:$HOME/.npm-global/bin:$HOME/Downloads/sonar-scanner-4.8.0.2856-linux/bin:$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export _JAVA_AWT_WM_NONREPARENTING=1

# history configs
HISTFILE=~/.histfile
export HISTSIZE=10000
export HISTORY_IGNORE="(clear|history)"
export HISTCONTROL=ignoredups
export SAVEHIST=1000
setopt appendhistory


export EDITOR='helix'

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-dirhistory/zsh-dirhistory.plugin.zsh

autoload -Uz compinit #promptinit
compinit
#promptinit

# This will set the default prompt to the walters theme
#prompt bart

# bindkeys
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

# cursor
# Cursor is a vertical line
echo -e -n "\x1b[\x35 q" # Blinking

#function parse_git_branch() {
#    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\1/p'
#}

# prompt
#COLOR_DEF=$'%f' # padrão
#COLOR_ICON=$'%F{197}' # vermelho-rosado
#COLOR_GIT=$'%F{208}' # laranja
#COLOR_DIR=$'%F{69}' # azul

#setopt PROMPT_SUBST
#PROMPT='%B${COLOR_ICON}>%f ${COLOR_DIR}%2~ ${COLOR_GIT}%0G$(parse_git_branch)%b ${COLOR_DEF}%? '
#RPROMPT='%n@%M'

# %F{COLOR_DEF}%(?..%F{red}?%?)

eval "$(starship init zsh)"

# aliases
alias l="exa -G"
alias ll="exa -l --icons"
alias la="exa -la --icons"
alias lt='exa -T -a -I .git'
alias ls='exa --sort=created --reverse'
alias ping='ping -c 4'
alias mkdir='mkdir -v'
alias mv='mv -v'
alias cp='cp -v'
alias rm='rm -v'
alias ..='cd ..'
alias fonebat='bluetoothctl info | grep 'Battery Percentage''

# Load Angular CLI autocompletion.
source <(ng completion script)

