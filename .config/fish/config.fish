
function fish_greeting
    echo Hello, Harris.
    echo The time is (set_color yellow; date +%T; set_color normal) and this machine is called $hostname
end

set -x LANG en_US.UTF-8
set -gx TERM xterm-256color

# theme 
set --universal ayu_variant dark && ayu_load_theme

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
command -qv nvim && alias vim nvim


alias gpc "git push origin HEAD"
alias gac "git add -A && git commit -m"
alias gpom "git pull origin main"
alias gs "git status"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# React Native
set -gx VOLTA_HOME $HOME/.volta
set -gx PATH $VOLTA_HOME/bin $PATH

set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-15.jdk/Contents/Home
set -gx JAVA_PATH /opt/apache-maven-3.8.3/bin $PATH

set -gx ANDROID_HOME $HOME/Library/Android/sdk 
set -gx PATH $ANDROID_HOME/emulator $PATH
set -gx PATH $ANDROID_HOME/tools $PATH
set -gx PATH $ANDROID_HOME/tools/bin $PATH
set -gx PATH $ANDROID_HOME/platform-tools $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# GCloud
# The next line updates PATH for the Google Cloud SDK.
bass source '$HOME/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
bass source '$HOME/google-cloud-sdk/completion.bash.inc'

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end


