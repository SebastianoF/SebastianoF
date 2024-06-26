# .bash_aliases

# Python virtualenvironments aliases:
alias s_py37="source ~/venvs/py37/bin/activate"
alias s_py38="source ~/venvs/py38/bin/activate"
alias s_py38dev="source ~/venvs/py38dev/bin/activate"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# alias to activate a virtualenv
alias activate='source venv/bin/activate'

# Alias to copy the current folder directory
alias here="pwd | pbcopy"

# conda quick activate and deactivate
alias c_activate="conda activate ${PWD##*/}"
alias c_deactivate="conda deactivate"

# fix <laptop name>

alias edge_open_logbook="code /Users/<laptop name>/repos/logbook"
alias edge_open_blog="code /Users/<laptop name>/repos/GeoDsBlog"
alias edge_open_intro="code /Users/<laptop name>/repos/intro-to-programming-in-python"