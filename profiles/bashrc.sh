parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

red=$(tput setaf 1)
green=$(tput setaf 2)
blue=$(tput setaf 6)
reset=$(tput sgr0)

export PS1="\[$green\]\$(parse_git_branch)\[$reset\] \W/ \[$green\]Φ\[$reset\] "

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export EDITOR=vim

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

PIP_CONFIG_FILE=~/.pip/pip.conf

ssh-add --apple-use-keychain ~/.ssh/id_ed25519_github > /dev/null 2>&1

# poetry
export PATH="/Users/edge/.local/bin:$PATH"

export PATH="/usr/local/texlive/2023basic/bin/universal-darwin:$PATH"