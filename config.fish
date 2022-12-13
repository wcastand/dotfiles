if status is-interactive
    # Commands to run in interactive sessions can go here
end

function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

alias dev="cd ~/dev"
alias mono="cd ~/dev/gc/green-got-mono-repo"
alias front="cd ~/dev/gc/front" 
alias gaa="git add --all"
alias ci="git commit -m $1"
alias push="git push"
alias pull="git pull"
alias st="git status"
alias co="git checkout"
alias cherry="git cherry-pick $1"

export ANDROID_HOME=$HOME/Library/Android/sdk
fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/tools
fish_add_path $ANDROID_HOME/tools/bin
fish_add_path $ANDROID_HOME/platform-tools

fish_add_path /Users/wcastand/.yarn/bin

starship init fish | source
