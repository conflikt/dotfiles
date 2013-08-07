""
"" Janus setup
""

syntax enable

" Define paths
let g:janus_path = escape(fnamemodify(resolve(expand("<sfile>:p")), ":h"), ' ')
let g:janus_vim_path = escape(fnamemodify(resolve(expand("<sfile>:p" . "vim")), ":h"), ' ')
let g:janus_custom_path = expand("~/.janus")
let g:NERDTreeWinPos = "right"
colorscheme muon
highlight clear SignColumn
let g:gitgutter_highlights = 0

if has("gui_running")
  let g:Powerline_theme="skwp"
  let g:Powerline_colorscheme="skwp"
  let g:Powerline_symbols='fancy'
end
let g:solarized_termcolors=256
set t_Co=16
set background=dark
"colorscheme Solarized
nnoremap <C-h> :set hlsearch!<CR>
set foldmethod=indent
set foldnestmax=10
set nofoldenable

set foldlevel=1
let g:Gitv_OpenHorizontal = 1

" Source janus's core
exe 'source ' . g:janus_vim_path . '/core/before/plugin/janus.vim'

" You should note that groups will be processed by Pathogen in reverse
" order they were added.
call janus#add_group("tools")
call janus#add_group("langs")
call janus#add_group("colors")

""
"" Customisations
""

if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif


" Disable plugins prior to loading pathogen
exe 'source ' . g:janus_vim_path . '/core/plugins.vim'

""
"" Pathogen setup
""

" Load all groups, custom dir, and janus core
call janus#load_pathogen()

" .vimrc.after is loaded after the plugins have loaded
