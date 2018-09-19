" druid628 vimrc (forked from: jmflava vimrc)!
"
"------------------------------------------------------------------------------
" VARIABLE SETTINGS
"------------------------------------------------------------------------------
:let mapleader = ","
set fileformats=unix
set ff=unix
" status line
  if has('statusline')
    " always show a status line
    set laststatus=2
    set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
  endif

"call pathogen#infect()

" a ruler on steroids
  set ruler
  set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)

  :colo darkblue
  if has('gui_running') 
    " full screen
      "set fuoptions=maxvert,maxhorz
      "au GUIEnter * set fullscreen

    " font settings
    " :colo molokai
    " :colo moria
    " :tabnew ~/Dropbox/symfony_api.md

    " misc
      " remove the toolbar and scrollbars
        set guioptions-=Tlr 
        set go-=T
        " set transp=8
        set lines=700
        set columns=130

    if has("mac")
      set guifont=Consolas:h13
    "elseif has("unix")
    "  set guifont=Liberation\ Mono\ 9 bold
    elseif has("win32") || has("win64")
      set guifont=Consolas:h10:cANSI
    endif

    set cursorline

  endif

" cTags
"  :set tags=<filename>.ctags.vim
  if filereadable("ctags.vim")
      set tags=ctags.vim
  endif
  " map <leader>tm <C-]>
  " map <leader>tmb <C-t>
  map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
  map <C-[><C-]>  :vsp<CR>:exec("tag ".expand("<cword>"))<CR>
  map <leader>unix :e ++ff=unix<CR>


" Tag List Options
  "let Tlist_Use_Right_Window=1
  "let Tlist_Use_Horiz_Window=0
  "let Tlist_Compact_Format=1
  "let Tlist_File_Fold_Auto_Close=1
  "let Tlist_Enable_Fold_Column=0
  "let Tlist_WinWidth=50

" Java Getters and Setters from beginning of line
  map <leader>jgs mawv/ <CR>"ty/ <CR>wvwh"ny/getters<CR>$a<CR><CR><Esc>xxapublic <Esc>"tpa<Esc>"npbiget<Esc>l~ea()<CR>{<CR><Tab>return <Esc>"npa;<CR>}<Esc>=<CR><Esc>/setters<CR>$a<CR><CR><Esc>xxapublic void <Esc>"npbiset<Esc>l~ea(<Esc>"tpa <Esc>"npa)<CR>{<CR><Tab>this.<Esc>"npa= <Esc>"npa;<CR>}<Esc>=<CR>`ak

" Make UP and DOWN keys scroll whole page -- not working --
  nnoremap <DOWN> 1<C-E>j
  nnoremap <UP> 1<C-Y>k

" Search options
  set ignorecase " case-insensitive
  set incsearch " see results as you type
  "set hlsearch " highlight results

" NERD Tree Options
  let NERDTreeShowHidden=0
  let NERDTreeShowLineNumbers=1

" Misc Settings
  "set t_Co=256
  set backspace=indent,eol,start
  set sidescrolloff=10
  set nobackup
  set noswapfile
  "set fdm=marker
  set history=50
  set nocompatible
  "set foldenable
  "set foldclose=all
  set nowrap
  set number relativenumber
  set ruler
  set showcmd
  set showmatch
  set autoindent
  set softtabstop=2
  set expandtab
  set tabstop=2
  set shiftwidth=2
  set undolevels=500
  set showtabline=18
  set showmode
  set noerrorbells " no beeps, please
  set visualbell
  set listchars=extends:…,tab:\ \ ,trail:⌫
  :filetype plugin on
  :syntax on
  au BufNewFile,BufRead *.groovy self groovy
  au FileType php set omnifunc=phpcomplete#CompletePHP
  let php_sql_query=1
  let php_htmlInStrings=1
  ":setlocal omnifunc=javacomplete#Complete
   if has("autocmd")
     autocmd Filetype java setlocal omnifunc=javacomplete#Complete
   endif



"------------------------------------------------------------------------------
" KEY MAPPINGS
"------------------------------------------------------------------------------

  " Select tabs with command+#, just like in iTerm, Firefox, Chrome, etc. <3 -- Thanks, Richtaur! -- not working --
  "  map <D-1> 1gt
  "  map <D-2> 2gt
  "  map <D-3> 3gt
  "  map <D-4> 4gt
  "  map <D-5> 5gt
  "  map <D-6> 6gt
  "  map <D-7> 7gt
  "  map <D-8> 8gt
  "  map <D-9> 9gt

  " Symfony Keys -- uses shell scripts I've set up. " from:jmflava  --
  " deprecated
  "  map ,scc :scc<CR>
  "  map ,sbar :ccbar<CR>

  " Various shortcuts for working with tabs
    map <leader>t :tabnew  
    map <leader>d :tabprev<CR> 
    map <leader>f :tabnext<CR>
    map <leader>gT :tabprev<CR>
    map <leader>gt :tabnext<CR>

  " Buffers!
    map <leader>bp :bprev!<CR>
    map <leader>bn :bnext!<CR>
    "map <leader>d :MBEbp<CR> 
    "map <leader>f :MBEbn<CR>

  " Edit our .vimrc file
    map <leader>vimrc :tabnew ~/.vimrc<CR><CR>

  " NERD Tree, son!
    map	,<TAB>r :NERDTreeMirror<CR>
    map	,nt :NERDTreeToggle<CR>
  " map	,<TAB>e :NERDTreeToggle<CR>
    map	,<TAB><SPACE> :o .<CR>

  " working on this -- would be nice to input a line number and have it automagically yanked for you.
  "  map <silent>xy mk<CR>:silent<CR>yy'k

  " Let's use jj as an alternative to the ESC key
  "  inoremap jj <Esc>
  "  nnoremap JJJJ <Nop>

  " Nobody likes typing about :set nu and :set nonu to toggle line numbers
    map <leader># :set nu!<CR>
    map <leader>## :set relativenumber! <CR>
    map <leader>no## :set nonumber norelativenumber <CR>

    :" :augroup numbertoggle
    " :  autocmd!
    " :  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    " :  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
    " :augroup END

  " toggle 
    function! g:ToggleNuMode()
       if(&rnu == 1)
          set nu
       else
          set rnu
       endif
    endfunc

    nnoremap <C-l> :call g:ToggleNuMode()<CR>

  " save over file if in read only mode 
    command SudoW :w !sudo tee %
    map <leader>sw :SudoW<CR>
  
  " Same goes for :set wrap and set nowrap
    map <leader>w :set wrap!<CR>

  " Set Paste/NoPaste.
    map  <leader>pa :set paste!<CR>

  " Boy, typing :w sure is a pain!
    map ; :w<CR>

  " Need a new line? BR below...
    map  <leader>brb o<ESC>k

  " BR above...
    map <leader>bra O<ESC>j

  " Search and replace.
    map <leader>sr :%s/

  " CTRL + X will close a buffer; not really used very much these days...
    map <C-x> :bd<CR>

  " g + direction for window split change. This beats the hell out of CTRL + W + direction.
    map <leader>g <C-w>

  " Set TAB to allow for auto-completion (note: this RULES)
    fun! InsertTabWrapper()
        let col = col('.') - 1
        if !col || getline('.')[col - 1] !~ '\k'
           return "\<tab>"
        else
           return "\<c-p>"
        endif
    endfun

    fun! ShiftInsertTabWrapper()
        let col = col('.') - 1
        if !col || getline('.')[col - 1] !~ '\k'
           return "\<s-tab>"
        else
           return "\<c-n>"
        endif
    endfun

    inoremap <tab> <c-r>=InsertTabWrapper()<CR>
    inoremap <s-tab> <c-r>=ShiftInsertTabWrapper()<CR>

  " to beta! -- temp convinience shortcut.
    map <leader>beta :!./symfony project:deploy beta -t --go<CR>


"------------------------------------------------------------------------------
" PROGRAMMER SHORTCUTS
"------------------------------------------------------------------------------

  " XHTML Wrappers
    :vmap sem    "zdi<em><C-R>z</em><ESC>
    :vmap sli    "zdi<li><C-R>z</li><ESC>
    :vmap sform  "zdi<form><C-R>z</form><ESC>
    :vmap sst    "zdi<strong><C-R>z</strong><ESC>
    :vmap sp     "zdi<p><C-R>z</p><ESC>
    :vmap sdiv   "zdi<div><C-R>z</div><ESC>
    :vmap span   "zdi<span><C-R>z</span><ESC>

  " SVN
    map <leader>com :!svn commit <C-R>=expand("%")<CR><CR>
    map <leader>lock :!svn lock <C-R>=expand("%")<CR><CR>
    map <leader>up :!svn update <C-R>=expand("%")<CR><CR>
    map <leader>add :!svn add <C-R>=expand("%")<CR><CR>

  " PHP
    map <leader>ptag i<?php<RETURN><RETURN>
    inoremap <leader>ptag <?php<RETURN><RETURN>
    inoremap <leader>pif if ()<RETURN>{<RETURN><TAB>//code<RETURN><BACKSPACE>}<ESC><ESC>3kf(a
    inoremap <leader>pife if ()<RETURN>{<RETURN><TAB>//code<RETURN><BACKSPACE>}<RETURN>else<RETURN>{<RETURN><TAB>//code...<RETURN><BACKSPACE>}<ESC><ESC>7kf(a
    inoremap <leader>pwh while ()<RETURN>{<RETURN><TAB>//code<RETURN><BACKSPACE>}<ESC>3kf(a
    inoremap <leader>pfe foreach ($array as $key => $val)<RETURN>{<RETURN><TAB>//code<RETURN><BACKSPACE>}<ESC>3kf(a
    inoremap <leader>pfo for ($i = 0; $i < 0; $i++)<RETURN>{<RETURN><TAB>//code<RETURN><BACKSPACE>}<ESC>3kf(a
    inoremap <leader>psw switch () {<TAB><ESC>o}<ESC>k_f(a
    inoremap <leader>pca case '':<CR>break;<ESC>k_f"a
    inoremap <leader>pde default:<CR>break;<ESC>k_f:a
    inoremap <leader>psw switch () {<RETURN><RETURN>}<ESC>2k_f(a
    inoremap <leader>pia if (isset($_REQUEST['action'])){<ESC>o<TAB>switch($_REQUEST['action']) {<ESC>o<TAB>case:<ESC>obreak;<ESC>o<RETURN>default:<ESC>obreak;<ESC>o<ESC>i<TAB>}<ESC>o<ESC>i}<ESC>6kf'a
    inoremap <leader>pwf while ($row = mysql_fetch_assoc($query)) {<ESC>o}<ESC>kf{o<TAB>
    inoremap <leader>pqu $query = '<ESC>o';<ESC>kf'o<TAB>
    inoremap <leader>psq $query = mysql_query($query) or die(mysql_error());<ESC>
    inoremap <leader>pqq $query = '<RETURN><TAB>SELECT *<RETURN>FROM table<RETURN><BACKSPACE>';<RETURN><RETURN>$query = mysql_query($query) or die(mysql_error());<RETURN><RETURN>while($row = mysql_fetch_assoc($query))<RETURN>{<RETURN><TAB>$rtn[] = $row;<RETURN><BACKSPACE>}<ESC>7kf<SPACE>l
    inoremap <leader>pts date('Y-m-d H:i:s');<ESC>o<ESC>
    inoremap <leader>ppo $_POST['']<ESC>F'i
    inoremap <leader>pre $_REQUEST['']<ESC>F'i
    inoremap <leader>pge $_GET['']<ESC>F'i
    inoremap <leader>pip $_SERVER["REMOTE_ADDR"]
    inoremap <leader>ppr print_r();<ESC>2ha
    inoremap <leader>vdd var_dump(); die;<ESC>8hi
    inoremap <leader>vd var_dump();<ESC>2ha
    inoremap <leader>di var_dump();<ESC>2ha
    inoremap <leader>prq require();<ESC>2ha
    inoremap <leader>pfu function () {<RETURN><RETURN>}<ESC>2k_f(i
    inoremap <leader>pdoc /**<RETURN>*<RETURN>*<RETURN>* @package _<RETURN>* @subpackage<RETURN>* @author Joshua Morse <joshua.morse@iostudio.com><RETURN>*<RETURN>*/<ESC>6ka

  " HTML Shortcuts
    inoremap <leader>hul <ul><RETURN><TAB><li></li><RETURN><BACKSPACE></ul><ESC>k_f>a
    inoremap <leader>hol <ol><RETURN><TAB><li></li><RETURN><BACKSPACE></ol><ESC>k_f>a
    inoremap <leader>hli <li></li><ESC>F>a
    inoremap <leader>hpp <p></p><ESC>F>a
    inoremap <leader>hdv <div></div><ESC>F>a
    inoremap <leader>hse <select name=""><RETURN><RETURN></select><ESC>2kf"a
    inoremap <leader>hop <option value=""></option><ESC>F"i
    inoremap <leader>hem <em></em><ESC>F>a
    inoremap <leader>hsr <strong></strong><ESC>F>a
    inoremap <leader>hbr <br/>
    inoremap <leader>hfo <form action="" id=""></form><ESC>F"i
    inoremap <leader>hti <title></title><ESC>F>a
    inoremap <leader>hpr <pre></pre><ESC>F>a
    inoremap <leader>the <textarea></textarea><ESC>F>a
    inoremap <leader>hst <style type="text/css"><RETURN><RETURN></style><ESC>ki
    inoremap <leader>hsc <script type="text/javascript"><RETURN><RETURN></script><ESC>ki<TAB>
    inoremap <leader>hin <input type="" value="" name="" />

  " Javascript
    inoremap <leader>jif if()<RETURN>{<ESC>o}<ESC>2kf(a
    inoremap <leader>jwh while()<RETURN>{<ESC>o}<ESC>kI<ESC>kf(a
    inoremap <leader>jfo for(i; i < 10; i++)<RETURN>{<ESC>o}<ESC>2kfi
    inoremap <leader>jfi for(var in ob)<RETURN>{<ESC>o}<ESC>kI<ESC>fv
    inoremap <leader>jtc try()<RETURN>{<RETURN><RETURN>}<ESC>2k_f(a

  " CSS
    inoremap <leader>cbo border: 1px solid black;
    inoremap <leader>cdn display: none;
    inoremap <leader>cwi width:;<ESC>ha<SPACE>
    inoremap <leader>che height:;<ESC>ha<SPACE>
    inoremap <leader>cfl float:;<ESC>ha<SPACE>
    inoremap <leader>cpa padding:;<ESC>ha<SPACE>
    inoremap <leader>ccl clear:;<ESC>ha<SPACE>
    inoremap <leader>cba background:;<ESC>ha<SPACE>
    inoremap <leader>cbp background-position:;<ESC>ha<SPACE>
    inoremap <leader>cfo font:;<ESC>ha<SPACE>

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
" Plug 'junegunn/seoul256.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

source ~/.vim/abbrev
