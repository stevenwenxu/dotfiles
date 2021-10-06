alias ll="ls -ahl"

export EDITOR=vim
export TERM=xterm-256color

setopt PROMPT_SUBST
source ~/.zsh_prompt

bindkey -e

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

export PATH="/usr/local/sbin:$PATH"
