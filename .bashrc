# --------------------------- #
# --- Discoople's .bashrc --- #
# --------------------------- #

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"



# Bash Prompt
PS1='\[\e[0;3;38;5;78m\]\w \[\e[0;1m\]@\[\e[0;1;3;38;5;160m\]\u \[\e[0;4m\]>\[\e[0m\]]\[\e[0;1m\]: \[\e[0m\]'
#shopt
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases

# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

[[ -f ~/.bashrc-personal ]] && . ~/.bashrc-personal

# date "+%Y %b %d (%a) %I:%M%p" #display date upon launch

neofetch

source /home/discoople/.aliasrc


