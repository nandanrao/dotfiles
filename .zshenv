######################################
############# PATH
######################################

# JAVA / SWAY Issue https://github.com/swaywm/sway/wiki#issues-with-java-applications
export _JAVA_AWT_WM_NONREPARENTING=1

# Setup Go
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go

# TODO: This should be done in profile.d, why it not??
export PATH=$PATH:/snap/bin

export PATH=:/home/nandan/.local/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

######################################
############# ALIASES
######################################

alias venv='python3.7 -m venv venv && source venv/bin/activate'
alias gcloud-start='~/scripts/gcloud-start.sh'
alias gcloud-ip='~/scripts/gcloud-ip.sh'
alias notebook='~/scripts/notebook.sh'
alias ktl='kubectl'
alias minihelm='helm --kube-context minikube'
alias kube-forward='~/scripts/kube-forward.sh'
alias kube-logs='~/scripts/kube-logs.sh'
alias klog='kubectl logs --follow'
alias kube-restart='~/scripts/kube-restart.sh'
alias ec='emacsclient -t'

alias vlab='cd ~/Documents/vlab-research'
alias bgse='cd ~/Documents/bgsedatascience'
alias kannact='cd ~/Documents/kannact'

alias psql='~/scripts/psql.sh'
alias mysql='~/scripts/mysql.sh'
alias dockpy='~/scripts/dockpy.sh'
