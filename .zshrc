export ZSH=/home/agnieszka/.oh-my-zsh

ZSH_THEME="mypygmalion"

COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(autojump colorize command-not-found git gradle pip ubuntu virtualenv)

export PATH="/home/agnieszka/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/agnieszka/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.8.4/bin:/opt/happy/1.19.4/bin:/opt/alex/3.1.3/bin:/home/agnieszka/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.8.4/bin:/opt/happy/1.19.4/bin:/opt/alex/3.1.3/bin:/home/agnieszka/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.8.4/bin:/opt/happy/1.19.4/bin:/opt/alex/3.1.3/bin"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconf="vim ~/.zshrc"

alias ls='ls -al --color=auto --human-readable --size --classify --group-directories-first'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias gti='git'
alias g='git'
alias ga='git add'
alias gd='git diff'
alias gc='git checkout'
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
