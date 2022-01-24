if status is-interactive
    # Commands to run in interactive sessions can go here
end

function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

alias dev="cd ~/Documents"
alias work="cd ~/Documents/shotgun"
alias b2b="cd ~/Documents/shotgun/b2b"
alias b2c="cd ~/Documents/shotgun/b2c"
alias gaa="git add --all"
alias ci="git commit -m $1"
alias push="git push"
alias pull="git pull"
alias st="git status"
alias co="git checkout"

export ANDROID_HOME=$HOME/Library/Android/sdk
fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/tools
fish_add_path $ANDROID_HOME/tools/bin
fish_add_path $ANDROID_HOME/platform-tools

starship init fish | source
fish_add_path /usr/local/opt/postgresql@12/bin
