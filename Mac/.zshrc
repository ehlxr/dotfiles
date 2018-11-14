# export GOROOT=/usr/local/go
export GOROOT_BOOTSTRAP=/usr/local/go
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=/Users/ehlxr/WorkSpaces/Go
export GOBIN=$GOPATH/bin

export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:$GOBIN
export PATH=$PATH:/Users/ehlxr/.gem/bin
export PATH=$PATH:/Users/ehlxr/works/bin
export PATH=$PATH:/Users/ehlxr/.cargo/bin

export JAVA_6_HOME=$(/usr/libexec/java_home -v 1.6)
export JAVA_7_HOME=$(/usr/libexec/java_home -v 1.7)
export JAVA_8_HOME=$(/usr/libexec/java_home -v 1.8)
export JAVA_9_HOME=$(/usr/libexec/java_home -v 9)
export JAVA_10_HOME=$(/usr/libexec/java_home -v 10)

# 默认 JDK 8
export JAVA_HOME=$JAVA_8_HOME

# alias 命令动态切换 JDK 版本
alias jdk6="export JAVA_HOME=$JAVA_6_HOME"
alias jdk7="export JAVA_HOME=$JAVA_7_HOME"
alias jdk8="export JAVA_HOME=$JAVA_8_HOME"
alias jdk9="export JAVA_HOME=$JAVA_9_HOME"
alias jdk10="export JAVA_HOME=$JAVA_10_HOME"

export ZSH=/Users/ehlxr/.oh-my-zsh

# ZSH_THEME="robbyrussell"
# ZSH_THEME="ys"
# ZSH_THEME="agnoster"
ZSH_THEME="ehlxr2"
# ZSH_THEME="powerlevel9k/powerlevel9k"
# source ~/.powerlevel9k

# plugins=(git wd autojump sublime sudo zsh-syntax-highlighting zsh-autosuggestions extract history-substring-search docker docker-compose docker-machine)
plugins=(git wd sudo zsh-syntax-highlighting zsh-autosuggestions history-substring-search docker docker-compose docker-machine git-flow-completion)

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
alias gacp='git add --all && git commit -m "站点更新：$(date +%Y-%m-%d) $(date +%T)" && git push'
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
alias dm='docker-machine'
alias vg='vagrant'
alias t='tmux'
alias e='exa -bghHliSa'
alias gbk='gitbook'
unalias grv

# etcd API 版本
export ETCDCTL_API=3

# source ~/.bash_profile

function gacpm() {
    git add .
    git commit -a -m "$1"
    git push
}

# alias gacpm=lazygit

function pf(){
    unset http_proxy
    unset https_proxy

    unset all_proxy

    echo -e "已关闭代理"
}
function po() {
    export http_proxy="http://127.0.0.1:1087"
    export https_proxy=$http_proxy

    export all_proxy=socks5://127.0.0.1:1086

    echo -e "已开启代理"
}

# export CERES_REGISTER_TOKEN=/Users/ehlxr/works/ns.token
export CERES_REGISTER_TOKEN=/Users/ehlxr/WorkSpaces/Go/src/ehlxr.me/jwt/b.token
export SERVICE_ACCOUNT_TOKEN_PATH=/Users/ehlxr/WorkSpaces/Go/src/ehlxr.me/jwt/b.token

# 打开可跨域的 chrome 浏览器
alias ccd='open -n /Applications/Google\ Chrome.app/ --args --disable-web-security  --user-data-dir=/Users/ehlxr/.MyChromeDevUserData/'export PATH="/usr/local/opt/mongodb@3.6/bin:$PATH"
export PATH="/usr/local/opt/mongodb@3.6/bin:$PATH"

# QT
export PATH="/usr/local/opt/qt/bin:$PATH"
export QT_DIR=/usr/local/Cellar/qt/5.11.2
export LDFLAGS="-L/usr/local/opt/qt/lib"
export CPPFLAGS="-I/usr/local/opt/qt/include"
export PKG_CONFIG_PATH="/usr/local/opt/qt/lib/pkgconfig"export PATH="/usr/local/opt/sqlite/bin:$PATH"
alias git='LANG=en_GB git'


transfer() {
    curl --progress-bar --upload-file "$1" https://transfer.sh/$(basename $1) | tee /dev/null;
}

alias tsf=transfer