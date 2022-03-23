set nowrap
set ignorecase
set smartcase
set autoindent
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set nocompatible              
set rtp+=/usr/local/opt/fzf
set shell=/bin/zsh
set number
set termguicolors
set ruler
set wildmenu
set wildmode=list:longest,full
set noerrorbells                     
set visualbell                        
set hlsearch
set incsearch
set confirm
set noswapfile
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

filetype off                 
let g:dashboard_default_executive ='fzflua'
let g:dashboard_custom_header = [
      \"                                            ",
      \"                                            ",
      \"                                            ",
      \"                                            ",
      \"                                            ",
      \"                                            ",
      \"                                            ",
      \"                                            ",
      \"                                            ",
      \"                                            ",
      \"                                            ",
      \"                                            ",
      \"                                            ",
      \"0   ______   ______   ______   ______   ",
      \"x  /\\  == \\ /\\  __ \\ /\\  __ \\ /\\__  _\\  ",
      \"5  \\ \\  __< \\ \\ \\/\\ \\\\ \\ \\/\\ \\\\/_/\\ \\/",
      \"8   \\ \\_\\ \\_\\\\ \\_____\\\\ \\_____\\  \\ \\_\\  ",
      \"4    \\/_/ /_/ \\/_____/ \\/_____/   \\/_/  ",
      \]

lua <<EOF
local g = vim.g
g.dashboard_session_directory = '~/.config/nvim/.sessions'g.dashboard_custom_section = {
    a = {description = {"  Find File                "}, command = "Telescope find_files"},
    b = {description = {"  Recents                  "}, command = "Telescope oldfiles"},
    c = {description = {"  Find Word                "}, command = "Telescope live_grep"},
    d = {description = {"  New File                 "}, command = "DashboardNewFile"},
    g = {description = {"  Update Plugins           "}, command = "PlugUpdate"},
    h = {description = {"  Settings                 "}, command = "edit $MYVIMRC"},
    i = {description = {"  Exit                     "}, command = "exit"}
    }
EOF
syntax on
filetype plugin indent on
hi LineNr ctermbg=NONE guibg=NONE 
hi NonText guifg=bg
autocmd StdinReadPre * let s:std_in=1
noremap Y "+y
noremap <silent> gb <cmd>Gitsigns blame_line<CR>

noremap <silent> te <cmd>Telescope<CR>
noremap <silent> tef <cmd>Telescope find_files<CR>
noremap <silent> teg <cmd>Telescope live_grep<CR>
noremap <silent> ter <cmd>Telescope resume<CR>
noremap <silent> teo <cmd>Telescope oldfiles<CR>
noremap <silent> tb <cmd>Telescope buffers<CR>
noremap <silent> te gc <cmd>Telescope git_commits<CR>
noremap <silent> te gs <cmd>Telescope git_status<CR>

" These commands will navigate through buffers in order regardless of which mode you are using
" e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
nnoremap <S-l> <cmd>BufferLineCycleNext<CR>
nnoremap <S-h> <cmd>BufferLineCyclePrev<CR>

" These commands will move the current buffer backwards or forwards in the bufferline
nnoremap <silent>bmn <cmd>BufferLineMoveNext<CR>
nnoremap <silent>bmp <cmd>BufferLineMovePrev<CR>


" These commands will sort buffers by directory, language, or a custom criteria
nnoremap <silent>be <cmd>BufferLineSortByExtension<CR>
nnoremap <silent>bd <cmd>BufferLineSortByDirectory<CR>
nnoremap <silent>br <cmd>lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id <buf_b.id end)<CR>
 
" NvimTree
noremap <silent> nt <cmd>NvimTreeToggle<CR>
noremap <silent> nc <cmd>NvimTreeClose<CR>
noremap <silent> nft <cmd>NvimTreeFindFileToggle<CR>
noremap <silent> nf <cmd>NvimTreeFocus<CR>
noremap <silent> nt <cmd>NvimTreeOpen<CR>

" Zen
noremap <silent> zen <cmd>TZAtaraxis<CR>
noremap <silent> zent <cmd>TZTop<CR>
noremap <silent> zetl <cmd>TZLeft<CR>

