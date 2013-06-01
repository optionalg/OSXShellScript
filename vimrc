" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 一般设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设定主题
" colo evening

" 显示行号
set nu

" 不要使用vi的键盘模式，而是vim自己的
set nocompatible

" history文件中需要记录的行数
" set history=100

" 在处理未保存或只读文件的时候，弹出确认
" set confirm

" 与windows共享剪贴板
" set clipboard+=unnamed

" 侦测文件类型
filetype on
 
" 载入文件类型插件
filetype plugin on

" 为特定文件类型载入相关缩进文件
filetype indent on

" 保存全局变量
" set viminfo+=!

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
 
" 语法高亮
syntax on

" 高亮字符，让其不受100列限制
":highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
":match OverLength '\%101v.*'

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

" 高亮光标所在的行
"set cursorline

" 不要闪烁
"set novisualbell

" 总是显示状态行
set laststatus=2

"a 状态栏显示目前所执行的指令
set showcmd

"a修改 vmirc 后自动生效
autocmd! bufwritepost .vimrc source ~/.vimrc

" 增强模式中的命令行自动完成操作
set wildmenu

" 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2

" 允许backspace和光标键跨越行边界原为set whichwrap+=<,>,h,l，但会屏敝缩进功能<或>
set whichwrap+=h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 启动的时候不显示那个援助索马里儿童的提示

set shortmess=atI

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 不让vim发出讨厌的滴滴声

"set noerrorbells

" 在被分割的窗口间显示空白，便于阅读

set fillchars=vert:\ ,stl:\ ,stlnc:\

" 光标移动到buffer的顶部和底部时保持3行距离

"set scrolloff=3

" 用空格键来开关折叠
set foldenable
set foldmethod=manual
nnoremap  @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')

" 设定默认解码

set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

"设定字体

"set guifont=Courier_New:h11:cANSI

"set guifontwide=新宋体:h11:cGB2312

" 设定编码
set enc=utf-8
set fileencodings=ucs-bom,utf-8,chinese
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

""自动补全
filetype plugin indent on
set completeopt=longest,menu

" 自动补全命令时候使用菜单式匹配列表
set wildmenu
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType java set omnifunc=javacomplete#Complet

:inoremap ( ()<ESC>i 
:inoremap ) <c-r>=ClosePair(')')<CR> 
:inoremap { {}<ESC>i 
:inoremap } <c-r>=ClosePair('}')<CR> 
:inoremap [ []<ESC>i 
:inoremap ] <c-r>=ClosePair(']')<CR> 
:inoremap < <><ESC>i 
:inoremap > <c-r>=ClosePair('>')<CR> 

function ClosePair(char) 
    if getline('.')[col('.') - 1] == a:char 
        return "\<Right>" 
    else 
        return a:char 
    endif 
endf 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 为C程序提供自动缩进
set smartindent

" 使用C样式的缩进
set cindent

" 制表符为4
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" 用空格代替制表符
set expandtab

" 不要换行
"set nowrap

" 在行和段开始处使用制表符
"set smartta


" 显示行号
set nu
