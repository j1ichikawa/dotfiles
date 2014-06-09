" vim:set ts=8 sts=2 sw=2 tw=0: (���̍s�Ɋւ��Ă�:help modeline���Q��)
"
" An example for a Japanese version vimrc file.
" ���{��ł̃f�t�H���g�ݒ�t�@�C��(vimrc) - Vim7�p����
"
" Last Change: 10-Jun-2014.
" Maintainer:  MURAOKA Taro <koron@tka.att.ne.jp>
"
" ���:
" ���̃t�@�C���ɂ�Vim�̋N�����ɕK���ݒ肳���A�ҏW���̋����Ɋւ���ݒ肪��
" ����Ă��܂��BGUI�Ɋւ���ݒ��gvimrc�ɏ�������Ă��܂��B
"
" �l�p�ݒ��_vimrc�Ƃ����t�@�C�����쐬�������ōs�Ȃ��܂��B_vimrc�͂��̃t�@
" �C���̌�ɓǍ��܂�邽�߁A�����ɏ����ꂽ���e���㏑�����Đݒ肷�邱�Ƃ��o��
" �܂��B_vimrc��$HOME�܂���$VIM�ɒu���Ă����K�v������܂��B$HOME��$VIM����
" �D�悳��A$HOME�ł݂������ꍇ$VIM�͓Ǎ��܂�܂���B
"
" �Ǘ��Ҍ����ɖ{�ݒ�t�@�C���𒼐ڏ����������ɍς܂��邱�Ƃ�ړI�Ƃ��āA�T�C
" �g���[�J���Ȑݒ��ʃt�@�C���ōs�Ȃ���悤�ɔz�����Ă���܂��BVim�N������
" �T�C�g���[�J���Ȑݒ�t�@�C��($VIM/vimrc_local.vim)�����݂���Ȃ�΁A�{�ݒ�
" �t�@�C���̎�v�������ǂݍ��܂��O�Ɏ����I�ɓǂݍ��݂܂��B
"
" �ǂݍ��݌�A�ϐ�g:vimrc_local_finish����0�̒l�ɐݒ肳��Ă����ꍇ�ɂ͖{��
" ��t�@�C���ɏ����ꂽ���e�͈�؎��s����܂���B�f�t�H���g�����S�č����ւ�
" �����ꍇ�ɗ��p���ĉ������B
"
" �Q�l:
"   :help vimrc
"   :echo $HOME
"   :echo $VIM
"   :version

"---------------------------------------------------------------------------
" �T�C�g���[�J���Ȑݒ�($VIM/vimrc_local.vim)������Γǂݍ��ށB�ǂݍ��񂾌��
" �ϐ�g:vimrc_local_finish�ɔ�0�Ȓl���ݒ肳��Ă����ꍇ�ɂ́A����ȏ�̐ݒ�
" �t�@�C���̓Ǎ��𒆎~����B
if 1 && filereadable($VIM . '/vimrc_local.vim')
  unlet! g:vimrc_local_finish
  source $VIM/vimrc_local.vim
  if exists('g:vimrc_local_finish') && g:vimrc_local_finish != 0
    finish
  endif
endif

"---------------------------------------------------------------------------
" ���[�U�D��ݒ�($HOME/.vimrc_first.vim)������Γǂݍ��ށB�ǂݍ��񂾌�ɕϐ�
" g:vimrc_first_finish�ɔ�0�Ȓl���ݒ肳��Ă����ꍇ�ɂ́A����ȏ�̐ݒ�t�@
" �C���̓Ǎ��𒆎~����B
if 0 && exists('$HOME') && filereadable($HOME . '/.vimrc_first.vim')
  unlet! g:vimrc_first_finish
  source $HOME/.vimrc_first.vim
  if exists('g:vimrc_first_finish') && g:vimrc_first_finish != 0
    finish
  endif
endif

"---------------------------------------------------------------------------
" ���{��Ή��̂��߂̐ݒ�:
"
"" �t�@�C����Ǎ��ގ��Ƀg���C���镶���G���R�[�h�̏������m�肷��B�����R�[�h��
"" �����ʋ@�\�𗘗p����ꍇ�ɂ͕ʓriconv.dll���K�v�Biconv.dll�ɂ��Ă�
"" README_w32j.txt���Q�ƁB���[�e�B���e�B�X�N���v�g��ǂݍ��ނ��ƂŐݒ肳���B
"source $VIMRUNTIME/encode_japan.vim
"" ���b�Z�[�W����{��ɂ��� (Windows�ł͎����I�ɔ��f�E�ݒ肳��Ă���)
"if !(has('win32') || has('mac')) && has('multi_lang')
"  if !exists('$LANG') || $LANG.'X' ==# 'X'
"    if !exists('$LC_CTYPE') || $LC_CTYPE.'X' ==# 'X'
"      language ctype ja_JP.eucJP
"    endif
"    if !exists('$LC_MESSAGES') || $LC_MESSAGES.'X' ==# 'X'
"      language messages ja_JP.eucJP
"    endif
"  endif
"endif
"" MacOS X���j���[�̓��{�ꉻ (���j���[�\���O�ɍs�Ȃ��K�v������)
"if has('mac')
"  set langmenu=japanese
"endif
"" ���{����͗p��keymap�̐ݒ�� (�R�����g�A�E�g)
"if has('keymap')
"  " ���[�}��������keymap
"  "silent! set keymap=japanese
"  "set iminsert=0 imsearch=0
"endif
"" ��GUI���{��R���\�[�����g���Ă���ꍇ�̐ݒ�
"if !has('gui_running') && &encoding != 'cp932' && &term == 'win32'
"  set termencoding=cp932
"endif

" �����R�[�h�̎����F��
if &encoding !=# 'utf-8'
  set encoding=japan
  set fileencoding=japan
endif
if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'
  " iconv��eucJP-ms�ɑΉ����Ă��邩���`�F�b�N
  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  " iconv��JISX0213�ɑΉ����Ă��邩���`�F�b�N
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif
  " fileencodings���\�z
  if &encoding ==# 'utf-8'
    let s:fileencodings_default = &fileencodings
    let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
    let &fileencodings = &fileencodings .','. s:fileencodings_default
    unlet s:fileencodings_default
  else
    let &fileencodings = &fileencodings .','. s:enc_jis
    set fileencodings+=utf-8,ucs-2le,ucs-2
    if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
      set fileencodings+=cp932
      set fileencodings-=euc-jp
      set fileencodings-=euc-jisx0213
      set fileencodings-=eucjp-ms
      let &encoding = s:enc_euc
      let &fileencoding = s:enc_euc
    else
      let &fileencodings = &fileencodings .','. s:enc_euc
    endif
  endif
  " �萔������
  unlet s:enc_euc
  unlet s:enc_jis
endif
" ���{����܂܂Ȃ��ꍇ�� fileencoding �� encoding ���g���悤�ɂ���
if has('autocmd')
  function! AU_ReCheck_FENC()
    if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
      let &fileencoding=&encoding
    endif
  endfunction
  autocmd BufReadPost * call AU_ReCheck_FENC()
endif
" ���s�R�[�h�̎����F��
set fileformats=unix,dos,mac
" ���Ƃ����̕����������Ă��J�[�\���ʒu������Ȃ��悤�ɂ���
if exists('&ambiwidth')
  set ambiwidth=double
endif

" CSV�̓���̃J�������n�C���C�g����
function! CSVH(x)
    execute 'match Keyword /^\([^,]*,\)\{'.a:x.'}\zs[^,]*/'
    execute 'normal ^'.a:x.'f,'
endfunction
command! -nargs=1 Csvhl :call CSVH(<args>)


"---------------------------------------------------------------------------
" ���j���[�t�@�C�������݂��Ȃ��ꍇ�͗\��'guioptions'�𒲐����Ă���
if 1 && !filereadable($VIMRUNTIME . '/menu.vim') && has('gui_running')
  set guioptions+=M
endif

"---------------------------------------------------------------------------
" Bram���̒񋟂���ݒ����C���N���[�h (�ʃt�@�C��:vimrc_example.vim)�B����
" �ȑO��g:no_vimrc_example�ɔ�0�Ȓl��ݒ肵�Ă����΃C���N���[�h�͂��Ȃ��B
if 1 && (!exists('g:no_vimrc_example') || g:no_vimrc_example == 0)
  if &guioptions !~# "M"
    " vimrc_example.vim��ǂݍ��ގ���guioptions��M�t���O�����āAsyntax on
    " ��filetype plugin on�������N����menu.vim�̓ǂݍ��݂������B�������Ȃ�
    " ��enc�ɑΉ����郁�j���[�t�@�C�����ǂݍ��܂�Ă��܂��A����̌�œǂݍ�
    " �܂��.vimrc��enc���ݒ肳�ꂽ�ꍇ�ɂ��̐ݒ肪���f���ꂸ���j���[������
    " �����Ă��܂��B
    set guioptions+=M
    source $VIMRUNTIME/vimrc_example.vim
    set guioptions-=M
  else
    source $VIMRUNTIME/vimrc_example.vim
  endif
endif

"---------------------------------------------------------------------------
" �����̋����Ɋւ���ݒ�:
"
" �������ɑ啶���������𖳎� (noignorecase:�������Ȃ�)
set ignorecase
" �啶���������̗������܂܂�Ă���ꍇ�͑啶�������������
set smartcase

"---------------------------------------------------------------------------
" �ҏW�Ɋւ���ݒ�:
"
" �^�u�̉�ʏ�ł̕�
"set tabstop=8
set tabstop=4
set sw=4
set sts=0
" �^�u���X�y�[�X�ɓW�J���Ȃ� (expandtab:�W�J����)
set noexpandtab
" �����I�ɃC���f���g���� (noautoindent:�C���f���g���Ȃ�)
"set autoindent
set noautoindent
" �o�b�N�X�y�[�X�ŃC���f���g����s���폜�ł���悤�ɂ���
set backspace=2
" �������Ƀt�@�C���̍Ō�܂ōs������ŏ��ɖ߂� (nowrapscan:�߂�Ȃ�)
set nowrapscan
" ���ʓ��͎��ɑΉ����銇�ʂ�\�� (noshowmatch:�\�����Ȃ�)
set showmatch
" �R�}���h���C���⊮����Ƃ��ɋ������ꂽ���̂��g��(�Q�� :help wildmenu)
set wildmenu
" �e�L�X�g�}�����̎����܂�Ԃ�����{��ɑΉ�������
set formatoptions+=mM
" ���{�ꐮ�`�X�N���v�g(by. ������m����)�p�̐ݒ�
let format_allow_over_tw = 1	" �Ԃ牺��\��

"---------------------------------------------------------------------------
" GUI�ŗL�ł͂Ȃ���ʕ\���̐ݒ�:
"
" �s�ԍ����\�� (number:�\��)
set number
" ���[���[��\�� (noruler:��\��)
" �J�[�\�������s�ڂ̉���ڂɒu����Ă��邩��\������
set ruler
" �^�u����s��\�� (list:�\��)
"set nolist
set list
" �ǂ̕����Ń^�u����s��\�����邩��ݒ�
"set listchars=tab:>-,extends:<,trail:-,eol:<
set listchars=tab:>-
" �����s��܂�Ԃ��ĕ\�� (nowrap:�܂�Ԃ��Ȃ�)
set wrap
" ��ɃX�e�[�^�X�s��\�� (�ڍׂ�:he laststatus)
set laststatus=2
" statusline�̃t�@�C���̏��\���ݒ�
"set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=\ (%v,%l)/%L%8P\ 
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"�X�e�[�^�X���C���ɕ����R�[�h�Ɖ��s������\������
"set statusline+=[%n][TYPE=%Y]\[FORMAT=%{&ff}]\[ENC=%{&fileencoding}]%m%r%w%{expand('%:p:t')}\%<\(%{SnipMid(expand('%:p:h'),80-len(expand('%:p:t')),'...')}\)

" Right StatusLine
"set statusline+=%=\ %=[%{GetB()}]" Get Hex
"set statusline+=%{g:HahHah()}" HahHah plugin
"set updatetime=500

" �R�}���h���C���̍��� (Windows�pgvim�g�p����gvimrc��ҏW���邱��)
set cmdheight=2
" �R�}���h���X�e�[�^�X�s�ɕ\��
set showcmd
" �^�C�g����\��
set title
" ��ʂ����n�ɔ��ɂ��� (���s�̐擪�� " ���폜����ΗL���ɂȂ�)
"colorscheme evening " (Windows�pgvim�g�p����gvimrc��ҏW���邱��)
colorscheme solarized " (Windows�pgvim�g�p����gvimrc��ҏW���邱��)

syntax enable
set background=dark "(dark / light)
call togglebg#map('<F5>')

"---------------------------------------------------------------------------
" �t�@�C������Ɋւ���ݒ�:
"
" �o�b�N�A�b�v�t�@�C�����쐬���Ȃ� (���s�̐擪�� " ���폜����ΗL���ɂȂ�)
set nobackup


"---------------------------------------------------------------------------
" �t�@�C�����ɑ啶���������̋�ʂ��Ȃ��V�X�e���p�̐ݒ�:
"   (��: DOS/Windows/MacOS)
"
if filereadable($VIM . '/vimrc') && filereadable($VIM . '/ViMrC')
  " tags�t�@�C���̏d���h�~
  set tags=./tags,tags
endif

"---------------------------------------------------------------------------
" �R���\�[���ł̃J���[�\���̂��߂̐ݒ�(�b��I��UNIX��p)
if has('unix') && !has('gui_running')
  let uname = system('uname')
  if uname =~? "linux"
    set term=builtin_linux
  elseif uname =~? "freebsd"
    set term=builtin_cons25
  elseif uname =~? "Darwin"
    set term=beos-ansi
  else
    set term=builtin_xterm
  endif
  unlet uname
endif

"---------------------------------------------------------------------------
" �R���\�[���łŊ��ϐ�$DISPLAY���ݒ肳��Ă���ƋN�����x���Ȃ錏�֑Ή�
if !has('gui_running') && has('xterm_clipboard')
  set clipboard=exclude:cons\\\|linux\\\|cygwin\\\|rxvt\\\|screen
endif

"---------------------------------------------------------------------------
" �v���b�g�z�[���ˑ��̓��ʂȐݒ�

" Win�ł�PATH��$VIM���܂܂�Ă��Ȃ��Ƃ���exe�������o���Ȃ��̂ŏC��
if has('win32') && $PATH !~? '\(^\|;\)' . escape($VIM, '\\') . '\(;\|$\)'
  let $PATH = $VIM . ';' . $PATH
endif

if has('mac')
  " Mac�ł̓f�t�H���g��'iskeyword'��cp932�ɑΉ�������Ă��Ȃ��̂ŏC��
  set iskeyword=@,48-57,_,128-167,224-235
endif

" Copyright (C) 2007 KaoriYa/MURAOKA Taro

" 2008/03/27 Modifiy for Using Align
" Align����{����Ŏg�p���邽�߂̐ݒ�
:let g:Align_xstrlen = 3

"Use grep in Windows
"set grepprg=grep\ -nH
set grepprg=ack\ -a

"-------------------------------------------------------------------------------
" netrw �̗L����
set nocp
if version >= 600
  filetype plugin indent on
endif

" �����錾��ɑ΂��ăL�[���[�h�̕⊮��L���ɂ���
" ����: ���̓��e��:filetype on������ɋL�q���邱�ƁB
autocmd FileType *
\   if &l:omnifunc == ''
\ |   setlocal omnifunc=syntaxcomplete#Complete
\ | endif

"--------------------------------------------------------------------------------
" �����̓��t���u$TODAY�v�ɓ���Ă����BVim�G�f�B�^�N�����ɐݒ肳���B
:let $TODAY = strftime('%Y%m%d')

:set foldmethod=syntax

"-------------------------------------------------------------------------------
" neocomplcache
"let g:neocomplcache_enable_at_startup = 0 " �L����
let g:neocomplcache_enable_at_startup = 1 " �N�����ɗL����

" surround extend
let g:surround_103 = "_('\r')"  " 103 = g
let g:surround_71 = "_(\"\r\")" " 71 = G

"-------------------------------------------------------------------------------
" swap file directory
:set directory=~/vimfiles/tmp
":set directory=C:/Temp
":set directory=.

" �u���񁛁v
:set noundofile
":set undodir=~/vimfiles/undo

"-------------------------------------------------------------------------------
:set noswapfile

" vimdiff color
hi DiffAdd    ctermfg=black ctermbg=2
hi DiffChange ctermfg=black ctermbg=3
hi DiffDelete ctermfg=black ctermbg=6
hi DiffText   ctermfg=black ctermbg=7

" use for Align plugin
set nocp

" Align����{����Ŏg�p���邽�߂̐ݒ�
:let g:Align_xstrlen = 3

"-------------------------------------------------------------------------------
" ctrip configs
let g:ctrlp_use_migemo = 1
let g:ctrlp_clear_cache_on_exit = 0   " �I�����L���b�V�����N���A���Ȃ�
let g:ctrlp_mruf_max            = 500 " MRU�̍ő�L�^��
let g:ctrlp_open_new_file       = 1   " �V�K�t�@�C���쐬���Ƀ^�u�ŊJ��

set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

" \path �Ō��݂̃t�@�C���̃t���p�X��}��
inoremap <Leader>path <C-R>=expand('%:p')<CR>
" �R�}���h���C���o�͂� echo expand('%:p')

"-------------------------------------------------------------------------------
"let g:previm_open_cmd

"------------------------------------------------------------
" Neobundle environment
"------------------------------------------------------------
if has('win32') || has('win64')
  set shellslash
  let $VIMDIR = expand('~/vimfiles')
else
  let $VIMDIR = expand('~/.vim')
endif

"------------------------------------------------------------
" NeoBundle settings
"------------------------------------------------------------
" neobundle
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
  set runtimepath+=~/vimfiles/bundle/neobundle.vim/
"  call neobundle#rc(expand('~/dotfiles/vimfiles/bundle/'))
endif

call neobundle#rc(expand('~/vimfiles/bundle/'))

" �C���X�g�[���������v���O�C��
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'surround.vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'rking/ag.vim'

NeoBundle 'thinca/vim-quickrun'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'altercation/vim-colors-solarized'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'https://github.com/Shougo/neocomplcache.git'
NeoBundle 'tomtom/tcomment_vim.git'
NeoBundle 'osyo-manga/vim-over'
NeoBundle 'syui/w-auto.vim'
NeoBundle 'rbtnn/rabbit-ui.vim'

NeoBundle 'https://github.com/vim-scripts/Align.git'
NeoBundle 'https://github.com/kien/ctrlp.vim.git'

filetype plugin indent on     " Required!

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif


"nnoremap <Leader>o :OverCommandLine<CR>

"------------------------------------------------------------
" ���ʕ⊮
"------------------------------------------------------------
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

"------------------------------------------------------------
" Unite settings
"------------------------------------------------------------
""" Unite.vim
" �N�����ɃC���T�[�g���[�h�ŊJ�n
let g:unite_enable_start_insert = 1
" �C���T�[�g�^�m�[�}���ǂ��炩��ł��Ăяo����悤�ɃL�[�}�b�v
nnoremap <silent> <C-f> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
inoremap <silent> <C-f> <ESC>:<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> <C-b> :<C-u>Unite buffer file_mru<CR>
inoremap <silent> <C-b> <ESC>:<C-u>Unite buffer file_mru<CR>

" �o�b�t�@�ꗗ
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
" �t�@�C���ꗗ
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" ���W�X�^�ꗗ
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
" �ŋߎg�p�����t�@�C���ꗗ
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
" �S���悹
nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>

" unite.vim��ł̃L�[�}�b�s���O
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " �P��P�ʂ���p�X�P�ʂō폜����悤�ɕύX
  imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
  " ESC�L�[��2�񉟂��ƏI������
  nmap <silent><buffer> <ESC><ESC> q
  imap <silent><buffer> <ESC><ESC> <ESC>q
endfunction

" rbtnn/rabbit-ui.vim
function! s:edit_csv(path)
  call writefile(map(rabbit_ui#gridview(map(readfile(a:path),'split(v:val,",",1)')), "join(v:val, ',')"), a:path)
endfunction

command! -nargs=1 EditCSV  :call <sid>edit_csv(<q-args>)

