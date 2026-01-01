source ~/.vim/functions.vim

" Prerequisites
" Vim 9.1.016 or higher

" =============================================== "
"                 EDITOR SETTINGS                 "
" =============================================== "

" Indentation
filetype plugin indent on
" Indentation spaces
set shiftwidth=2
" Tabs size
set tabstop=2
" Use space chars instead of tabs
set expandtab
" Disable mouse (toggle with <Leader> + m)
set mouse=


" =============================================== "
"                 VISUAL SETTINGS                 "
" =============================================== "

" Line numbers
set number
" Syntax highlighting
syntax on

" Deep blue background for visual mode
highlight Visual ctermbg=17 ctermfg=white
" Cyan for string literals
highlight String ctermfg=Cyan guifg=Cyan
" Green for comments
highlight Comment ctermfg=green
" Dark gray background for popup menu
highlight Pmenu ctermbg=237 ctermfg=white
" Deep blue background for the selected
" item in the popup menu
highlight PmenuSel ctermbg=17 ctermfg=white


" =============================================== "
"                     PLUGINS                     "
" =============================================== "

call plug#begin('~/.vim/plugged')
" Distraction-free mode
Plug 'junegunn/goyo.vim'
" Tables
Plug 'dhruvasagar/vim-table-mode'
" Git
Plug 'tpope/vim-fugitive'
" Surrounding
Plug 'tpope/vim-surround'
" Fuzzy finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" LaTeX
Plug 'lervag/vimtex'
" Markdown
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
" Syntax highlighting
Plug 'sheerun/vim-polyglot'
" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


" =============================================== "
"              PLUGINS CONFIGURATION              "
" =============================================== "

" coc.nvim
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-python',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-java',
  \ 'coc-clangd',
  \]

" goyo.vim
let g:goyo_width = 120
let g:goyo_margin_top = 3
let g:goyo_margin_bottom = 3

" vim-markdown
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 2
let g:vim_markdown_conceal_code_blocks = 0

" vim-markdown-toc
let g:vmt_max_level = 3 " Max level of headings to be included in the toc"


" ================================================ "
"                  FILETYPE RULES                  "
" ================================================ "

" Any
autocmd FileType * setlocal formatoptions-=cro

" Java
autocmd FileType java setlocal foldmethod=syntax foldlevel=1

" Markdown
autocmd FileType markdown setlocal conceallevel=2


" ================================================ "
"                     MAPPINGS                     "
" ================================================ "

" --- General ---

" Leader
map <SPACE> <leader>

" Append
inoremap <S-Tab> <C-o>A

" Duplicate line
nnoremap <C-d> yyp

" Navigation
nnoremap <C-n> :GFiles<CR>
nnoremap <C-p> :Buffers<CR>
nnoremap <Leader>n :Vexplore<CR>

" Reload
nnoremap <Leader>r :source $MYVIMRC<CR>

" Resize current buffer
nnoremap <Leader><Up> :resize +5<CR>
nnoremap <Leader><Down> :resize -5<CR>
nnoremap <Leader><Left> :vertical resize -5<CR>
nnoremap <Leader><Right> :vertical resize +5<CR>

" Search lines in current buffer
nnoremap <Esc>f :BLines<CR>

" Toggle mouse
nnoremap <leader>m :call ToggleMouse()<CR>


" --- Plugins ---

" coc.nvim
" Autocomplete
inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "\<Tab>"
" Go to definition
nmap <silent> gd <Plug>(coc-definition)
" Go to type definition
nmap <silent> gy <Plug>(coc-type-definition)
" Go to implementation
nmap <silent> gi <Plug>(coc-implementation)
" Go to references
nmap <silent> gr <Plug>(coc-references)

" goyo.vim
nnoremap <C-g> :Goyo<CR>

" vim-fugitive
nnoremap <Leader>st :Git st<CR>
nnoremap <Leader>gr :Git gr<CR>
nnoremap <Leader>br :Git br<CR>
nnoremap <Leader>df :Git diff<CR>

" vim-surround
" Parentheses
nmap <Leader>( ysiwb
nmap <Leader>s( yssb
" Curly braces
nmap <Leader>{ ysiwB
nmap <Leader>s{ yssB
" Square brackets
nmap <Leader>[ ysiw[
nmap <Leader>s[ yss[
" Double quotes
nmap <Leader>" ysiw"
nmap <Leader>s" yss"
" Single quotes
nmap <Leader>' ysiw'
nmap <Leader>s' yss'

" vim-table-mode
nmap <Esc>t :TableModeToggle<CR>
