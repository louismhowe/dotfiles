set background=dark
if has("gui_macvim")
  set guifont=Monaco:h10
  set transparency=2
  colorscheme wombat
  let macvim_hig_shift_movement = 1
elseif has("unix")
  " let s:uname = system("uname")
  set guifont=Terminus\ 9
  colorscheme wombat
endif
set noantialias
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=m
