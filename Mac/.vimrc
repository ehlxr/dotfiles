" 总是显示状态栏
" set laststatus=2

" 显示光标当前位置
set ruler

" 开启行号显示
set number

" 高亮显示当前行/列
" set cursorline
" set cursorcolumn

" 高亮显示搜索结果
set hlsearch

" 自适应不同语言的智能缩进
filetype indent on

" 设置缩进
" set cindent
set autoindent
set smartindent

" 将制表符扩展为空格
set expandtab

" 设置编辑时制表符占用空格数
set tabstop=4

" 设置格式化时制表符占用空格数
set shiftwidth=4

" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 开启语法高亮功能
syntax enable

" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 禁止折行
set nowrap

" 操作：za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠
" 基于缩进或语法进行代码折叠
" set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" 搜索未输入完成即开始匹配显示
set is

" 编码设置
set encoding=utf-8

" 关闭自动备份
set nobackup

" 关闭交换文件
set noswapfile
