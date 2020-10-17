export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:$GOBIN
export PATH=$PATH:/Users/ehlxr/.gem/bin
export PATH=$PATH:/Users/ehlxr/works/bin
export PATH=$PATH:/Users/ehlxr/.cargo/bin
export PATH=$PATH:/Users/ehlxr/works/jmeter/bin

# Java Version Manager
[ -s "$HOME/.jabba/jabba.sh" ] && source "$HOME/.jabba/jabba.sh"

# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="/Users/ehlxr/.sdkman"
# [[ -s "/Users/ehlxr/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ehlxr/.sdkman/bin/sdkman-init.sh"

# export JAVA_6_HOME=$(/usr/libexec/java_home -v 1.6)
# export JAVA_7_HOME=$(/usr/libexec/java_home -v 1.7)
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_271.jdk/Contents/Home
# export JAVA_9_HOME=$(/usr/libexec/java_home -v 9)
# export JAVA_10_HOME=$(/usr/libexec/java_home -v 10)
# OpenJDK
# export OPENJDK_8_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
# export OPENJDK_12_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-12.0.1.jdk/Contents/Home
export OPENJDK_8_HOME=$(jabba which adopt@1.8.0-272)/Contents/Home

# 默认 JDK 8
export JAVA_HOME=$OPENJDK_8_HOME

# alias 命令动态切换 JDK 版本
# alias jdk6="export JAVA_HOME=$JAVA_6_HOME"
# alias jdk7="export JAVA_HOME=$JAVA_7_HOME"
alias jdk8="export JAVA_HOME=$JAVA_8_HOME"
# alias jdk9="export JAVA_HOME=$JAVA_9_HOME"
# alias jdk10="export JAVA_HOME=$JAVA_10_HOME"
# alias openjdk8="export JAVA_HOME=$OPENJDK_8_HOME"
# alias openjdk12="export JAVA_HOME=$OPENJDK_12_HOME"
alias openjdk8="export JAVA_HOME=$OPENJDK_8_HOME"

export ZSH=/Users/ehlxr/.oh-my-zsh

# ZSH_THEME="robbyrussell"
# ZSH_THEME="ys"
# ZSH_THEME="agnoster"

# ZSH_THEME="typewritten/typewritten"
# TYPEWRITTEN_CURSOR="beam"
# WD_SKIP_EXPORT=1
# TYPEWRITTEN_MULTILINE=true

# mkdir -p "$HOME/.zsh"
# git clone https://github.com/reobin/typewritten.git "$HOME/.zsh/typewritten"
export TYPEWRITTEN_COLOR_MAPPINGS="primary:cyan"
fpath+=$HOME/.zsh/typewritten
autoload -U promptinit; promptinit
prompt typewritten
# TYPEWRITTEN_PROMPT_LAYOUT="pure"
# TYPEWRITTEN_DISABLE_RETURN_CODE=true
tw_current_directory="%F{$tw_current_directory_color}%~"
TYPEWRITTEN_CURSOR="beam"

# ZSH_THEME="powerlevel10k/powerlevel10k"
# source ~/.powerlevel9k

# plugins=(git wd autojump sublime sudo zsh-syntax-highlighting zsh-autosuggestions extract history-substring-search docker docker-compose docker-machine)
plugins=(git wd sudo zsh-syntax-highlighting zsh-autosuggestions history-substring-search docker docker-compose docker-machine)

source $ZSH/oh-my-zsh.sh

# set agnoster the “user@hostname” info
# prompt_context(){}
# prompt_context() {
#   if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#     prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
#   fi
# }

# alias h="hexo cl && hexo g && gulp && hexo d && git push origin"
alias h="hexo cl && hexo g && gulp && hexo d"
alias gacp='git add --all && git commit -m "update at $(date +%Y-%m-%d) $(date +%T) by ehlxr" && git push'
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
alias ds='docker stats'
alias dm='docker-machine'
alias vg='vagrant'
alias t='tmux'
alias e='exa -bghHliSa'
alias gbk='gitbook'
# unalias grv

# etcd API 版本
export ETCDCTL_API=3

# source ~/.bash_profile

function gacpm() {
    git add .
    git commit -a -m "$1"
    git push
}

function lsofp(){
    lsof -p "$1" -nP | grep LISTEN
}

function lsofi(){
    lsof -i:"$1" -nP | grep LISTEN
}

# alias gacpm=lazygit

function pf(){
    unset http_proxy
    unset https_proxy

    unset all_proxy

    echo -e "已关闭代理"
}
function po() {
    export http_proxy="http://127.0.0.1:7890"
    export https_proxy=$http_proxy

    export all_proxy=socks5://127.0.0.1:7891

    echo -e "已开启代理"
}

# 打开可跨域的 chrome 浏览器
alias ccd='open -n /Applications/Google\ Chrome.app/ --args --disable-web-security  --user-data-dir=/Users/ehlxr/.MyChromeDevUserData/'export PATH="/usr/local/opt/mongodb@3.6/bin:$PATH"
alias git='LANG=en_GB git'

# QT
export PATH="/usr/local/opt/qt/bin:$PATH"
export QT_DIR=/usr/local/Cellar/qt/5.11.2
export LDFLAGS="-L/usr/local/opt/qt/lib"
export CPPFLAGS="-I/usr/local/opt/qt/include"
export PKG_CONFIG_PATH="/usr/local/opt/qt/lib/pkgconfig"

transfer() {
    curl --progress-bar --upload-file "$1" https://transfer.sh/$(basename $1) | tee /dev/null;
}
alias tsf=transfer

export GO111MODULE=on
export GOPROXY=https://goproxy.cn,direct
# export GOPROXY=https://mirrors.aliyun.com/goproxy,direct

# export GOROOT_BOOTSTRAP=/usr/local/go
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=/Users/ehlxr/WorkSpaces/Go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# 会 unset GOPATH 等环境变量
# [[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

unalias gg
alias gg="go get -v -u $1"
alias ggf="export GO111MODULE=off; go get -v -u $1"

function etcdkeeper(){
    cd ~/works/etcdkeeper/ && ./etcdkeeper $@
}

function kafka-manager(){
    echo http://localhost:9000
    cd ~/WorkSpaces/kafka-manager/target/universal/kafka-manager-1.3.3.23 &&  ./bin/kafka-manager
}

function zkui(){
    echo http://localhost:9090
    cd ~/WorkSpaces/zkui/target && java -jar zkui-2.0-SNAPSHOT-jar-with-dependencies.jar
}

function phoenix(){
    cd /usr/local/opt/apache-phoenix-4.15.0-HBase-1.3/bin && ./sqlline.py localhost:2181
}

function zkvs(){
    cd ~/WorkSpaces/zookeeper-visualizer/target && java -jar zookeeper-visualizer-jar-with-dependencies.jar
}

# ElasticSearch GUI
function kaizen(){
    cd /usr/local/opt/kaizen/ && sh kaizen.sh
}

alias rg='rg --no-heading'
alias rgf='rg --no-heading --files -g'
alias fd='fd -HI'

export GITHUB_RELEASE_TOKEN='xxxxxxxxxxxxxxxxxxxxxxxxxxxx'

alias sv='nvim -u ~/.SpaceVim/vimrc'

# 切换 maven 配置文件
function mc(){
    ln -sfv ~/.m2/$1-settings.xml ~/.m2/settings.xml
}

# 切换 python 版本(brew install python@2/brew install python)
function pc(){
    if [[ ! -n "$1" || "$1" == 3 ]]; then
        ln -sfv /usr/local/bin/python3 /usr/local/bin/python
        ln -sfv /usr/local/bin/pip3 /usr/local/bin/pip
    elif [[ "$1" == 2 ]]; then
        ln -sfv /usr/local/bin/python$1 /usr/local/bin/python
        ln -sfv /usr/local/bin/pip$1 /usr/local/bin/pip
    else
        echo "不支持的版本号：$1"
    fi
}

# 默认 python3
# pc 3

alias jd='sudo /Users/ehlxr/Sync/works/JD-GUI.app/Contents/MacOS/universalJavaApplicationStub.sh'

export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

export PATH="$PATH:/Users/ehlxr/WorkSpaces/flutter/bin"

export ANDROID_HOME="/Users/ehlxr/Library/Android/sdk"
export PATH="${PATH}:$ANDROID_HOME/emulator:"

# 配置 kubectl 默认命名空间
function kn(){
    kubectl config set-context --current --namespace=lk-dn-svr-$1
}

alias kp=kube-prompt

alias npm=cnpm
alias rc=rclone

# 查询 PID
function pid(){
    ps x | grep $1 | grep -v grep | awk '{print $1}'
}

export BORG_REPO=root@oracle1:/root/BorgBackup
export BORG_PASSPHRASE='xxxxxxx'

export TELEGRAM_TOKEN='xxx:xxx-xxxxxxxx'
alias pd='sudo -b /Applications/Parallels\ Desktop.app/Contents/MacOS/prl_client_app'

# base64 编码
function b64(){
    echo $1 | base64
}
# base64 解码
function bd64(){
    echo $1 | base64 -D
}

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles