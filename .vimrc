set nocompatible

set textwidth=79

" manejo de tabs y espacios
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set hidden

" plugins por tipo de archivo
filetype plugin on
filetype indent on

" color
" colorscheme evening
colorscheme freya 

" busqueda incremental (a medida que se escribe)
set incsearch
set hlsearch

" numeros de linea
set nu

" show title in the console title bar
set title

" siempre ver barra de estado
set ls=2

" backspace can delete previos characters
set bs=2

"ignore case when searching
set ignorecase

" display the current mode
set showmode

" enable mouse
set mouse=a 

" smoother changes
set ttyfast 

" Taglist variables
" Display function name in status bar:
let g:ctags_statusline=1

" Automatically start script
let generate_tags=1

" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0

" Shorter commands to toggle Taglist display
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>

" Various Taglist diplay config:
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1

" Activar navegador de archivos
map <F3> :NERDTreeToggle<CR>


" Cerrar sola ventana de ayuda de completado
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" acceso directo para autocompletado
imap <C-J> <C-X><C-O>

" Mostrar lista de todo's
map <F2> :TaskList<CR>

" borra los espacios extras al final de las lineas
" (guarda antes la posición y la restablece luego)
autocmd BufWritePre *.py mark z | %s/ *$//e | 'z
autocmd BufWritePre *.html mark z | %s/ *$//e | 'z
autocmd BufWritePre *.js mark z | %s/ *$//e | 'z

" save as sudo
ca w!! w !sudo tee "%"


" Colores y mas configuraciones del autocompletado
" highlight Pmenu ctermbg=4 guibg=LightGray 
highlight Pmenu ctermbg=Black ctermfg=DarkBlue guibg=DarkGray
" highlight PmenuSel ctermbg=8 guibg=DarkBlue guifg=Red
" highlight PmenuSbar ctermbg=7 guibg=DarkGray
" highlight PmenuThumb guibg=Black

" use global scope search
let OmniCpp_GlobalScopeSearch = 1

" 0 = namespaces disabled
" 1 = search namespaces in the current buffer
" 2 = search namespaces in the current buffer and in included files
let OmniCpp_NamespaceSearch = 2

" 0 = auto
" 1 = always show all members
let OmniCpp_DisplayMode = 1

" 0 = don't show scope in abbreviation
" 1 = show scope in abbreviation and remove the last column
let OmniCpp_ShowScopeInAbbr = 0

" This option allows to display the prototype of a function in the abbreviation part of the popup menu.
" 0 = don't display prototype in abbreviation
" 1 = display prototype in abbreviation
let OmniCpp_ShowPrototypeInAbbr = 1

" This option allows to show/hide the access information ('+', '#', '-') in the popup menu.
" 0 = hide access
" 1 = show access
let OmniCpp_ShowAccess = 1

" This option can be use if you don't want to parse using namespace declarations in included files and want to add 
" namespaces that are always used in your project.
let OmniCpp_DefaultNamespaces = ["std"]

" Complete Behaviour
let OmniCpp_MayCompleteDot = 0
let OmniCpp_MayCompleteArrow = 0
let OmniCpp_MayCompleteScope = 0

" When 'completeopt' does not contain "longest", Vim automatically select the first entry of the popup menu. You can 
"change this behaviour with the OmniCpp_SelectFirstItem option.
let OmniCpp_SelectFirstItem = 0

" accesos directos para debugger
" map <F5> :Dbg over<CR>
" map <F6> :Dbg into<CR>
" map <F7> :Dbg out<CR>
" map <F8> :Dbg here<CR>
" map <F9> :Dbg break<CR>
" map <F10> :Dbg watch<CR>
" map <F11> :Dbg down<CR>
" map <F12> :Dbg up<CR>


" Ignore .pyc, ~, and .vim files
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$']

" Settings for netrw
let g:netrw_list_hide='^\..*$,^.*\~$,^.*\.pyc$'

" Chapa config https://github.com/alfredodeza/chapa.vim
let g:chapa_default_mappings = 1

" Comentarios
map c I#j

" Guardar y continuar editando
imap <C-s> <Esc>:w<CR>
map <C-g> <Esc>:w<CR>i

" Buffers manager
:noremap <C-left> :bprev<CR>
:noremap <C-right> :bnext<CR> 
:nnoremap <F5> :buffers<CR>:buffer<Space>

" Accesos directos para tabs
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm<CR>
map tt :tabnew 


""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""

autocmd FileType python set omnifunc=pythoncomplete#Complete

nnoremap _dt :set ft=htmldjango<CR>
nnoremap _pd :set ft=python.django<CR>

" snippets para django
autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate

" Smart Indent
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class 

" pydiction
"let g:pydiction_location = '/home/maxi/.vim/after/ftplugin/pydiction/complete-dict'


let python_highlight_builtin_objs = 1
let python_highlight_indent_errors = 1
" let python_highlight_space_errors = 1

