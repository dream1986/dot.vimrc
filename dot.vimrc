" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'morhetz/gruvbox'

Plugin 'Valloric/YouCompleteMe'
" Ultisnips
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdcommenter'

Bundle 'dyng/ctrlsf.vim'

Plugin 'kshenoy/vim-signature'

"Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'bling/vim-airline'

Plugin 'moll/vim-bbye'
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:vimrc_author='Tao Zhijiang <Nicol TAO>' 
let g:vimrc_email='taozhijiang@gmail.com' 
let g:vimrc_homepage='http://anyshare.org  http://github.com/taozhijiang' 
" nmap <F4> :AuthorInfoDetect<cr> 

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Set to auto read when a file is changed from the outside
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

"Always show current position
set ruler

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn

" 设置 gvim 显示字体
" Not work right now
set guifont=YaHei\ Consolas\ Hybrid\ 11.5
set guifontwide=YaHei\ Consolas\ Hybrid\ 11.5

" 将制表符扩展为空格
set expandtab

" Be smart when using tabs ;)
set smarttab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" 基于缩进或语法进行代码折叠
" set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
" za，打开或关闭当前折叠；
" zM，关闭所有折叠；
" zR，打开所有折叠

""""""""""""""""""""""""""""""
" 标签跳转
""""""""""""""""""""""""""""""
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }
" 常用的几个标签命令
" mx 设定/取消当前行名为 x 的标签
" m, 自动设定下一个可用书签名
" mda 删除当前文件中所有独立书签
" ms 罗列出当前文件中所有书签
" mn 按行号前后顺序，跳转至下个独立书签
" mp 按行号前后顺序，跳转至前个独立书签

" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Enable backup
set backup
" Set backup directory
set backupdir=~/.vim/backup
" Set swap file directory
set directory=~/.vim/swap,/tmp
" Keep more backups for one file
autocmd BufWritePre * let &backupext = strftime(".%m-%d-%H-%M")

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
nnoremap <Space> <Nop>
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

"""""""""""""""""""""""""""""
" The Most Recently Used (MRU) plugin
"""""""""""""""""""""""""""""
let MRU_Max_Entries = 200
let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'  " For Unix 
let MRU_Window_Height = 15 
let MRU_Max_Menu_Entries = 20 
nmap <Leader>mru :MRU<cr>

"""""""""""""""""""""""""""""
":Calendar (for vertical window)
":CalendarH (for horizontal window)
"""""""""""""""""""""""""""""

""""""""""""""""""""""""""""
" NERD Tree
""""""""""""""""""""""""""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-e> :NERDTreeToggle<CR>
let g:NERDTree_title="[NERDTree]"  
function! NERDTree_Start()  
        exec 'NERDTree'  
endfunction  
function! NERDTree_IsValid()  
    return 1  
endfunction  

""""""""""""""""""""""""""""""
" BufExplorer
""""""""""""""""""""""""""""""
"  '\be' (normal open)  or 
"  '\bs' (force horizontal split open)  or 
"  '\bv' (force vertical split open) 
nnoremap <script> <silent> <script> <Leader>be :BufExplorer<CR>
nnoremap <script> <silent> <script> <Leader>bv :BufExplorerVerticalSplit<CR>
nnoremap <script> <silent> <script> <Leader>bs :BufExplorerHorizontalSplit<CR>
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.
autocmd BufWinEnter \[Buf\ List\] setl nonumber 

""""""""""""""""""""""""""""
" WinManager
""""""""""""""""""""""""""""
let g:winManagerWindowLayout = "BufExplorer,NERDTree"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
map <c-w><c-f> :FirstExplorerWindow<cr> 
map <c-w><c-b> :BottomExplorerWindow<cr> 
map <c-w><c-t> :WMToggle<cr> 
"使用w-m作为启动winmanager快捷键，以下的配置是为了解决NERDTree的显示问题
nmap wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>


""""""""""""""""""""""""""""
" conque
" Run interactive commands inside a Vim buffer
""""""""""""""""""""""""""""
" Zsh have some problem here, just use bash instead
map <Leader>sh :ConqueTermVSplit bash<CR>
":ConqueTerm zsh
":ConqueTermSplit zsh
":ConqueTermVSplit zsh

""""""""""""""""""""""""""""
" YankRing.vim : Maintains a history of previous yanks, changes and deletes 
""""""""""""""""""""""""""""
nnoremap <silent> <C-y> :YRShow<CR> 
let g:yankring_history_file = ".vim/backup/yankring_history"


""""""""""""""""""""""""""""
" EasyMotion : Vim motions on speed! 
""""""""""""""""""""""""""""
let g:EasyMotion_smartcase = 1
let g:EasyMotion_leader_key = '<Space>'
" <Space>-w :look up afterword
" <Space>-b :look up backword
map <Leader> <Plug>(easymotion-prefix)
map  / <Plug>(easymotion-sn)
" Multi chars search
omap / <Plug>(easymotion-tn)
" 上一个或者下一个查找
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


""""""""""""""""""""""""""""
" Color settings
" Using gruvbox color theme
""""""""""""""""""""""""""""
set t_Co=256
syntax on
colorscheme gruvbox
set background=dark

""""""""""""""""""""""""""""
" Using airline for your status line
""""""""""""""""""""""""""""
set laststatus=2  
set encoding=utf-8  
let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 映射切换buffer的键位
nnoremap <Leader>bp :bp<CR>
nnoremap <Leader>bn :bn<CR>
" 由于原生的:bd在删除当前buffer时会将整个窗口关闭，故使用Bbye的:Bd
nnoremap <Leader>bd :Bd<CR>


""""""""""""""""""""""""""""
" CtrlP 
""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" Press <F5> to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
" Press <c-f> and <c-b> to cycle between modes.
" Press <c-d> to switch to filename only search instead of full path.
" Press <c-r> to switch to regexp mode.
" Use <c-j>, <c-k> or the arrow keys to navigate the result list.
" Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
" Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
" Use <c-y> to create a new file and its parent directories.
" Use <c-z> to mark/unmark multiple files and <c-o> to open them.
" Submit two or more dots .. to go up the directory tree by one or multiple levels.
" Use :25 to jump to line 25.

""""""""""""""""""""""""""""
" tagbar
""""""""""""""""""""""""""""
nmap <Leader>tb :Tagbar<cr>
let tagbar_width=25


""""""""""""""""""""""""""""
"YouCompleteMe 
""""""""""""""""""""""""""""
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" Do not ask when starting vim
let g:ycm_confirm_extra_conf = 0
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 引入 C++ 标准库tags
set tags+=/home/user/.vim/tags/usr_include.tags
set tags+=/home/user/.vim/tags/linux_4.0.tags

" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
" inoremap <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全         
let g:ycm_seed_identifiers_with_syntax=1



""""""""""""""""""""""""""""
" Ultisnips
""""""""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


""""""""""""""""""""""""""""
" vim-scripts/argtextobj.vim
""""""""""""""""""""""""""""
" You can
" d(elete), c(hange), v(select)... an argument or inner argument in familiar ways.
" That is, such as 'daa'(delete-an-argument) 'cia'(change-inner-argument) 'via'(select-inner-argument).

""""""""""""""""""""""""""""
" vim-scripts/a.vim
""""""""""""""""""""""""""""
" :A

""""""""""""""""""""""""""""
" Yggdroot/indentLine
""""""""""""""""""""""""""""
" :set list lcs=tab:\|\ 
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_color_tty_light = 7
let g:indentLine_color_dark = 1
let g:indentLine_char = '|'

""""""""""""""""""""""""""""
" scrooloose/nerdcommenter
""""""""""""""""""""""""""""
" [count]<leader>cc |NERDComComment|
" [count]<leader>cn |NERDComNestedComment|
" [count]<leader>c |NERDComToggleComment|
" [count]<leader>cm |NERDComMinimalComment|
" [count]<leader>ci |NERDComInvertComment|
" [count]<leader>cs |NERDComSexyComment|
" <leader>c$ |NERDComEOLComment|
" <leader>cA |NERDComAppendComment|
" |NERDComInsertComment|
" <leader>ca |NERDComAltDelim|
" [count]<leader>cl
" [count]<leader>cb |NERDComAlignedComment|
" [count]<leader>cu |NERDComUncommentLine|
"

""""""""""""""""""""""""""""
" scrooloose/nerdcommenter
""""""""""""""""""""""""""""

