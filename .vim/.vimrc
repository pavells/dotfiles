" Vim Plug
call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'

Plug 'easymotion/vim-easymotion'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'mattn/emmet-vim'

Plug 'altercation/vim-colors-solarized'

Plug 'tpope/vim-haml'

Plug 'cakebaker/scss-syntax.vim'

Plug 'vim-scripts/matchit.zip'

Plug 'tpope/vim-surround'

" VimComplet
Plug 'ajh17/VimCompletesMe'

" Unite
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Shougo/unite.vim'

" Markdown
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'

" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" JavaScript
Plug 'pangloss/vim-javascript'

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'

call plug#end()


colorscheme jellybeans
set background=dark
set number
set shiftwidth=2
set smarttab
set expandtab
set smartindent
set colorcolumn=80

set mouse=a

set hlsearch
set incsearch

" Mapp
map <Leader> <Plug>(easymotion-prefix)
nmap <F8> :TagbarToggle<CR>

" Airine
let g:airline_theme = 'distinguished'
let g:airline_enable_fugitive = 1
let g:airline_enable_syntastic = 1
let g:airline_enable_bufferline = 1

" Emmet
let g:user_emmet_leader_key = '<C-A>'

" Snippet
let g:UltiSnipsExpandTrigger = '<C-c>'  " use <Tab> trigger autocompletion
let g:UltiSnipsJumpForwardTrigger = '<C-f>'
let g:UltiSnipsJumpBackwardTrigger = '<C-b>'

" Netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" CtrlP
set wildignore+=*/tmp/*,*/.git/*,*.so,*.swp,*.zip*
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = { 'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$', 'link': 'some_bad_symbolic_links', }

" Unite
nmap <F2> :Unite file buffer -no-hide-icon<CR>
let g:unite_split_rule = "bot"
let g:unite_force_overwrite_statusline = 0
let g:unite_winheight = 15 
let g:unite_candidate_icon="▷"

let g:unite_source_menu_menus = {}
let g:unite_source_menu_menus.Umenu = {'description' : 'Unite menu',}
let g:unite_source_menu_menus.Umenu.candidates = {'mru&buffer':'Unite buffer file_mru','tag':'Unite tag','file':'Unite file','file_rec':'Unite file_rec','file_rec/async':'Unite file_rec/async','find':'Unite find','grep':'Unite grep','register':'Unite register','bookmark':'Unite bookmark','output':'Unite output',}
function g:unite_source_menu_menus.Umenu.map(key, value)
    return {'word' : a:key, 'kind' : 'command','action__command' : a:value,}
endfunction
