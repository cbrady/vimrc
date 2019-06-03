execute pathogen#infect()
syntax on
filetype plugin indent on
set number
set ruler
set splitright
set hlsearch
set incsearch
set ignorecase
set smartcase
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set list
set backspace=indent,eol,start
set listchars=""
set listchars=tab:\ \
set listchars+=trail:.
set listchars+=extends:>
set listchars+=precedes:<

nnoremap <leader>fef :normal! gg=G``<CR>
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q
vmap <A-]> >gv
vmap <A-[> <gv
nmap <A-]> >>
nmap <A-[> <<
omap <A-]> >>
omap <A-[> <<
imap <A-]> <Esc>>>i
imap <A-[> <Esc><<i
inoremap jk <esc>
map <C-t> :Files <CR>
map <Leader>f :Ag <CR>
nmap ; :Buffers<CR>
nmap <Leader>aa :CodeClimateAnalyzeProject<CR>
nmap <Leader>ao :CodeClimateAnalyzeOpenFiles<CR>
nmap <Leader>af :CodeClimateAnalyzeCurrentFile<CR>
nmap <leader>gb :Gblame<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gl :Glog<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gp :Git push<CR>

set wildignore=*.o,*.obj,*.otf,*.eot,*.ttf,*.woff,*.svg,app/assets/images,app/assets/fonts,vendor,public,features,tmp,*.git,*.rbc,*.rbo,*.class,*.gem
set wildignore+=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg,*~,._*
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

set rtp+=~/.fzf
if executable('ag')
  let g:ackprg = 'ag --vimgrep --ignore ",**/log/*,**/public/assets/*,**/tmp/capybara,**/tmp/miniprofiler/*,**/tmp/cache/*,**/node_modules/*"'
endif

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_ruby_checkers = ['ruby']
let g:vimrubocop_config = '~/cc_rubocop.yml'

hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE

let g:airline_powerline_fonts = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set laststatus=2
set statusline=%f\ %m\ %r
set statusline+=Line:%l/%L[%p%%]
set statusline+=Col:%v
set statusline+=Buf:#%n
set statusline+=[%b][0x%B]

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

set autoread
au FocusGained,BufEnter * :silent! !

let loaded_netrwPlugin = 1
