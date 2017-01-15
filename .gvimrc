"set background=dark
colorscheme molokai
if has("gui_macvim")
  set guifont=Monaco:h10
  set transparency=2
  let macvim_hig_shift_movement = 1
elseif has("unix")
  " let s:uname = system("uname")
  set guifont=Terminus\ 9
endif
set noantialias
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=m
