set hls

hi User1 ctermfg=red ctermbg=black
hi User2 ctermfg=yellow ctermbg=black
hi User3 ctermfg=lightgrey ctermbg=black
hi User4 ctermfg=blue ctermbg=black
hi User5 ctermfg=darkgrey ctermbg=black

set statusline=%2*%m%r%1*\ %n\ %4*%{&ff}%4*%y%*%5*\ %<%{getcwd()}/%3*%t\ %=\ %*%1*%l%4*/%L%*%1*%4v\ %*%4*0x%04B\ %*
set laststatus=2

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set smartcase

set magic

set noerrorbells
set novisualbell

set expandtab
set shiftwidth=3
set tabstop=3
set smartindent
set ai
set si
"mouse enabled. to copy to clipb, highlight w/ <shift> held, to paste use <shift><insert>
set mouse=a

func! StartConqueTermBelow()
   ConqueTermSplit bash
   resize -20
endfu
command! CC call StartConqueTermBelow()

hi LineNr ctermfg=DarkGrey
set nu
hi Comment ctermfg=DarkGrey
hi String ctermfg=Grey
hi Number ctermfg=LightYellow
hi PreProc ctermfg=LightGreen
hi SpecialComment ctermfg=LightRed
hi Constant ctermfg=LightBlue
hi NonText ctermfg=DarkGrey

nmap <space> i <esc>r

" clear search highlights
nnoremap <silent> <C-l> :nohl<CR><C-l>
