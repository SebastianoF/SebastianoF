eval "$(/opt/homebrew/bin/brew shellenv)"
export BASH_SILENCE_DEPRECATION_WARNING=1

# Cargo for rust:
. "$HOME/.cargo/env"

if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -r ~/.bash_aliases ]; then
   source ~/.bash_aliases
fi

# Setting PATH for Python 3.11
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH

