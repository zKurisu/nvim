" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: Jie

" ==================== Editor behavior ====================
syntax on    " highlight your code
set nospell
set fileencodings=ucs-bom,utf-8,default,latin1
set foldlevel=99     
"set autoindent       
set ts=4            
set shiftwidth=4   
set expandtab     
set hidden
set undofile
set undodir=~/.local/share/nvim/undo
set background=dark
set nrformats+=alpha
set path+=**
set wildmenu
set vb
set relativenumber
set nu
set cursorline  " Add a line to where your cursor are
set wrap
set showcmd

set ignorecase
set smartcase
set hlsearch
exec "nohlsearch"
set incsearch




" ==================== Basic Mapping ====================

let maplocalleader = "'"
let mapleader = " "

imap jk <esc>
nmap ; :
nmap S :w<CR>
nmap Q :q<CR>
nmap J 5j
nmap K 5k
nnoremap n nzz
nnoremap N Nzz
nnoremap <LEADER>/ :nohlsearch<CR>

"add \v automatically when i search 
nmap / /\v
map <silent> <C-e> :NERDTreeToggle<CR>
nnoremap <leader>rc :vsplit $HOME/.config/nvim/init.vim<cr>
nnoremap <leader>src :source $HOME/.config/nvim/init.vim<cr>
"Toggle the undo graph
nnoremap <F5> :MundoToggle<CR>
nnoremap <leader>n :cnext<cr>
nnoremap <leader>N :cprevious<cr>
"Toggle of paste mode
nnoremap <leader>p :set paste<cr>
nnoremap <leader>P :set nopaste<cr>


" ==================== Insert Mode Complement ====================
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap <> <><esc>i
inoremap { {}<esc>i
inoremap ` ``<esc>i
inoremap ' ''<esc>i
inoremap " ""<esc>i
"skip out the block like ) > ] } " '
inoremap )) <esc>f)a
inoremap }} <esc>f}a
inoremap >> <esc>f>a
inoremap ]] <esc>f]a
inoremap "" <esc>f"a
inoremap '' <esc>f'a


" ==================== Adding things in normal mode ====================
"to enter a \n when in the mode of normal
nnoremap <leader><cr> i<cr><esc>
"Add ;
nnoremap <leader>; mqA;<esc>`q


" ==================== Window management ====================
nnoremap <LEADER>h <C-w>h
nnoremap <LEADER>j <C-w>j
nnoremap <LEADER>k <C-w>k
nnoremap <LEADER>l <C-w>l
" splite the screens to up (horizontal), down (horizontal), left (vertical),
" right (vertical)
nnoremap sg :set nosplitright<CR>:vsplit<CR>:set splitright<CR> 
nnoremap sj :set splitbelow<CR>:split<CR>
nnoremap sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR> 
nnoremap sl :set splitright<CR>:vsplit<CR> 
" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>
" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H
" Press <LEADER> + q to close the window below the current window
noremap <LEADER>q <C-w>j:q<CR>


" ==================== Terminal management ====================
noremap <LEADER>t :set splitright<CR>:vsplit<CR>:terminal<CR>


" ==================== Install plugins with vim-plug ====================
call plug#begin('$HOME/.config/nvim/plugged')


"Markdown
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'} 
"Plug 'preservim/vim-markdown'
"Plug 'tamlok/vim-markdown'
Plug 'joker1007/vim-markdown-quote-syntax'
"Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }

"Python 
Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }
Plug 'tomtom/tcomment_vim' 
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
Plug 'Yggdroot/indentLine' 

"Status line
Plug 'vim-airline/vim-airline'
Plug 'godlygeek/tabular'

"LaTeX
Plug 'lervag/vimtex'

"File finder
""Plug 'yggdroot/leaderf', { 'do': ':LeaderfInstallCExtension' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'

"Themes
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-startify'  
" Plug 'mg979/vim-xtabline'

"Visulize some original function
Plug 'junegunn/vim-peekaboo' "To peek the contents of the register when you hit \" or @ in normal mode
Plug 'simnalamburt/vim-mundo' "Visualising the undo tree
Plug 'scrooloose/nerdtree'

"The premier Vim plugin for Git
Plug 'tpope/vim-fugitive'

"Enhance text edit
Plug 'tpope/vim-surround' "To add surrounders
Plug 'gcmt/wildfire.vim' "To select text in surrounders
Plug 'fidian/hexmode' "Hex eidting in vim
Plug 'mileszs/ack.vim'
"Plug 'mg979/vim-visual-multi'  多光标
Plug 'liuchengxu/vim-which-key'
Plug 'voldikss/vim-translator' " Translator

"highlighter
Plug 'RRethy/vim-illuminate'

"Ultisnips
Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

"Complement
"Plug 'valloric/youcompleteme'
"Plug 'ervandew/supertab'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Use release branch (recommend)

" lazygit
Plug 'kdheepak/lazygit.nvim'

call plug#end()


" ==================== Mundo -- undo tree ====================
let g:mundo_width=60
let g:mundo_preview_hight=40
let g:mundo_right=1
let g:mundo_help = 1
let g:mundo_header = 1


" ==================== Gruvbox ====================
" g:gruvbox_transparent_bg = 1
colorscheme gruvbox
let g:airline_theme='gruvbox'

" ==================== Markdown ====================
nnoremap <LEADER>md :InstantMarkdownPreview<CR>

let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:markdown_enable_folding = 1
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
let g:instant_markdown_mathjax = 1
let g:instant_markdown_mermaid = 1
"let g:instant_markdown_autoscroll = 0
let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1


" ==================== LaTeX ====================
" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
"let g:vimtex_view_method = 'zathura'
"let g:vimtex_view_method = 'okular'
" Or with a generic interface:
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_view_enabled = 1

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
"let maplocalleader = ","


" ==================== Lazygit ====================
noremap <c-g> :LazyGit<CR>
let g:lazygitfloating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 1 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed


" ==================== UltiSnips ====================
"Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
"     - https://github.com/Valloric/YouCompleteMe
"   " - https://github.com/nvim-lua/completion-nvim
set runtimepath+=~/.vimultisnips_rep
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetStorageDirector='~/.vim/UltiSnips'
"   " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" ==================== Fzf ====================


" ==================== tcomment_vim ====================
"nnoremap ci cl
let g:tcomment_textobject_inlinecomment = ''
nmap <LEADER>cn g>c
vmap <LEADER>cn g>
nmap <LEADER>cu g<c
vmap <LEADER>cu g<


" ==================== coc.nvim ====================
let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-vimlsp',
    \ 'coc-marketplace',
    \ 'coc-python',
    \ 'coc-clangd',
    \ 'coc-texlab']

set hidden " The file which are not write will be hidden in buffer
set updatecount=100 " swap 
set shortmess+=c " less message

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
" if has('nvim')
  inoremap <silent><expr> <c-o> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)
" GoTo code navigation. where the function is defined.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> <LEADER>h :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
omap <leader>a  <Plug>(coc-codeaction-selected)


" ==================== vim-illuminate ====================
let g:Illuminate_delay = 750
hi illuminatedWord cterm=undercurl gui=underline


" ==================== fzf ====================
nnoremap <LEADER>ff :<C-u>FZF<CR>
nnoremap <LEADER>fb :Buffers<CR>
nnoremap <LEADER>fa :Ag<space>
nnoremap <LEADER>fh :History:<CR>


" ==================== xtabline ====================
" let g:xtabline_settings = {}
" let g:xtabline_settings.enable_mappings = 0
" let g:xtabline_settings.enabled = 1
" let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
" let g:xtabline_settings.enable_persistance = 0
" let g:xtabline_settings.last_open_first = 1


" ==================== airline ====================
""let g:airline#extensions#tabline#enabled = 1


" ==================== vim-which-key ====================
nnoremap <LEADER>wk :WhichKey '<space>'<CR>


" ==================== vim-translator ====================
" nnoremap <silent> <Leader>t <Plug>Translate
vnoremap <silent> <LEADER>t <Plug>TranslateV
" nnoremap <silent> <LEADER>h <Plug>TranslateH
" g:translator_target_lang='en'
