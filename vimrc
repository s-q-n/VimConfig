execute pathogen#infect()

filetype on
syntax on
colorscheme Tomorrow-Night

set lines=35 columns=150
set colorcolumn=90
set number
set autoindent
set encoding=utf-8

set foldmethod=indent
set foldlevel=99

nnoremap <space> za
nnoremap <esc><esc> :noh<return>

au BufNewFile,BufRead *.py
	\ set smartindent |
	\ set autoindent |
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set fileformat=unix |

au BufNewFile,BufRead *.php
	\ set smartindent |
	\ set autoindent |
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set fileformat=unix |


au BufNewFile,BufRead *.html
	\ set smartindent |
	\ set autoindent |
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2 |

au BufNewFile,BufRead *.js
	\ set smartindent |
	\ set autoindent |
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2 |

au BufNewFile,BufRead *.css
	\ set smartindent |
	\ set autoindent |
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2 |

au BufNewFile,BufRead *.c
	\ set smartindent |
	\ set autoindent |
	\ set tabstop=4 |
	\ set shiftwidth=4 |
	\ set expandtab |
	\ set textwidth=120 |

let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && 
\ b:NERDTree.isTabTree()) | q | endif

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"python virtualenv support
py << EOF
import os
import sys

if 'VIRTUAL_ENV' in os.environ:
	project_base_dir = os.environ['VIRTUAL_ENV']
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this))
EOF


