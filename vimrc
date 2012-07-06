"' Starting up pathogen
call pathogen#infect()


""
"" Customisations
""
color molokai

" Set leader to comma
let mapleader = ","

" Highlight different haskell properties
let hs_highlight_types=1
let hs_highlight_more_types=1
let hs_highlight_debug=1
let g:molokai_original=1

" Makes Cmd-Shift-Left/Right switch between tabs
map <D-S-Left> gT
map <D-S-Right> gt

" Nerdcommenter comment lines
map <D-7> ,ci

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Define haddock browser to satisfy vim2hs
let g:haddock_browser = "/Applications/Google Chrome.app"

" gqip reformats a block of lines, like a comment block to be width 60
set formatprg=par\ -w80

" Enable DCPU16 highlighting for dasm files
au BufNewFile,BufRead *.dasm16,*.dasm setf dcpu

" Execute file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:cd %:h<CR>:!/usr/bin/env python % <CR>

" Remove toolbar
set go-=T

" Set virtualedit to all so I can go whereever i want
" set virtualedit=all

" Set visual bell, not that goddamned sound
set vb

" Insert blank line with shift enter key
" nnoremap <CR> o<Esc>

" .ejs is HTML
au BufNewFile,BufRead,BufEnter *.ejs setf html

" Use fancy fonts for powerline
let g:Powerline_symbols = 'fancy'
set guifont=Menlo\ for\ Powerline
