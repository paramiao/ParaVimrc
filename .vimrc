set ts=4
set softtabstop=4
set shiftwidth=4
autocmd FileType python setlocal et sta sw=4 sts=4 ts=4 
autocmd FileType python setlocal foldmethod=indent
autocmd VimEnter * NERDTree
autocmd VimEnter * TagbarToggle
execute pathogen#infect()
"默认展开所有代码
set foldmethod=indent
set foldlevel=99
"开启语法高亮
syntax on
"let g:molokai_original = 1
"set background=dark
"syntax enable
"set background=light
"set background=dark
"colorscheme solarized
colorscheme desert
""依文件类型设置自动缩进
filetype indent plugin on
 
"显示当前的行号列号：
set ruler
""在状态栏显示正在输入的命令
set showcmd
 
set ci       " 开启cindent
set noet     " 关闭expandtab

"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu
" 
" "离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"  
"  "回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"   
"   "上下左右键的行为
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" :"\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"let g:flake8_cmd="/usr/local/bin/flake8"
"autocmd BufWritePost *.py call Flake8()
let g:SuperTabRetainCompletionType=2
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabDefaultCompletionType="<C-X><C-O>"
nmap <F8> :TagbarToggle<CR>
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>
