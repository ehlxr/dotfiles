# export GOROOT=/usr/local/go
export GOROOT_BOOTSTRAP=/usr/local/go
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=/Users/ehlxr/WorkSpaces/Go
export GOBIN=$GOPATH/bin

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:$GOBIN
export PATH=$PATH:/Users/ehlxr/.gem/bin
export PATH=$PATH:/Users/ehlxr/works/bin

export JAVA_6_HOME=$(/usr/libexec/java_home -v 1.6)
export JAVA_7_HOME=$(/usr/libexec/java_home -v 1.7)
export JAVA_8_HOME=$(/usr/libexec/java_home -v 1.8)
export JAVA_9_HOME=$(/usr/libexec/java_home -v 9)

# 默认 JDK 8
export JAVA_HOME=$JAVA_8_HOME

# alias 命令动态切换 JDK 版本
alias jdk6="export JAVA_HOME=$JAVA_6_HOME"
alias jdk7="export JAVA_HOME=$JAVA_7_HOME"
alias jdk8="export JAVA_HOME=$JAVA_8_HOME"
alias jdk9="export JAVA_HOME=$JAVA_9_HOME"

export ZSH=/Users/ehlxr/.oh-my-zsh

# ZSH_THEME="robbyrussell"
# ZSH_THEME="ys"
# ZSH_THEME="agnoster"
# ZSH_THEME="ehlxr"
ZSH_THEME="powerlevel9k/powerlevel9k"
source ~/.powerlevel9k

plugins=(git wd autojump sublime sudo zsh-syntax-highlighting zsh-autosuggestions extract history-substring-search)

source $ZSH/oh-my-zsh.sh

# set agnoster the “user@hostname” info
prompt_context(){}
# prompt_context() {
#   if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#     prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
#   fi
# }

# alias h="hexo cl && hexo g && gulp && hexo d && git push origin"
alias h="hexo cl && hexo g && gulp && hexo d"
alias gacp='git add --all && git commit -v && git push'
alias gacpm='git add --all && git commit -m "update" && git push'
alias js='j --stat'
alias vsc='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code';
alias o='open .'
alias oa='open -a '
alias bsl='brew services list'
alias bs='brew services'
alias bi='brew install'
alias bf='brew info'
alias brc='brew cask'
alias bl='brew list'
alias di='docker images'
alias dp='docker ps -a'
alias vg='vagrant'
alias t='tmux'
alias e='exa -bghHliSa'
# etcd API 版本
export ETCDCTL_API=3

# source ~/.bash_profile


function proxy_off(){
    unset http_proxy
    unset https_proxy
    echo -e "已关闭代理"
}
function proxy_on() {
    export http_proxy="http://127.0.0.1:1087"
    export https_proxy=$http_proxy
    echo -e "已开启代理"
}

export CERES_REGISTER_TOKEN=/Users/ehlxr/works/ns.token