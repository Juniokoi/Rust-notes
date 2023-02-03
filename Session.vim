let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/rustnotes
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +23 src/main.rs
badd +17 ~/projects/rustnotes/rustfmt.toml
argglobal
%argdel
edit src/main.rs
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 130 + 85) / 171)
exe 'vert 2resize ' . ((&columns * 40 + 85) / 171)
argglobal
balt ~/projects/rustnotes/rustfmt.toml
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <BS> v:lua.MPairs.autopairs_bs()
xnoremap <buffer> <silent>  :lua require'nvim-treesitter.incremental_selection'.node_incremental()
xnoremap <buffer> <silent> <nop> :lua require'nvim-treesitter.incremental_selection'.scope_incremental()
onoremap <buffer> <silent> [[ :call rust#Jump('o', 'Back')
xnoremap <buffer> <silent> [[ :call rust#Jump('v', 'Back')
nnoremap <buffer> <silent> [[ :call rust#Jump('n', 'Back')
onoremap <buffer> <silent> ]] :call rust#Jump('o', 'Forward')
xnoremap <buffer> <silent> ]] :call rust#Jump('v', 'Forward')
nnoremap <buffer> <silent> ]] :call rust#Jump('n', 'Forward')
xnoremap <buffer> <silent> <BS> :lua require'nvim-treesitter.incremental_selection'.node_decremental()
xnoremap <buffer> <silent> <C-Bslash> :lua require'nvim-treesitter.incremental_selection'.node_incremental()
nnoremap <buffer> <D-R> :RustRun! =join(b:rust_last_rustc_args)erust#AppendCmdLine(' -- ' . join(b:rust_last_args))
nnoremap <buffer> <silent> <D-r> :RustRun
inoremap <buffer> <config.e> l<Cmd>lua require('nvim-autopairs.fastwrap').show()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},!^F,o,O,0[,0]
setlocal cinoptions=L0,(0,Ws,J1,j1
setlocal cinwords=for,if,else,while,loop,impl,mod,unsafe,trait,struct,enum,fn,extern
setlocal cinscopedecls=public,protected,private
setlocal colorcolumn=
setlocal comments=s0:/*!,m:\ ,ex:*/,s1:/*,mb:*,ex:*/,:///,://!,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorbind
setlocal cursorcolumn
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%f:%l:%c:\ %t%*[^:]:\ %m,%f:%l:%c:\ %*\\d:%*\\d\ %t%*[^:]:\ %m,%-G%f:%l\ %s,%-G%*[\ ]^,%-G%*[\ ]^%*[~],%-G%*[\ ]...,%-G,%-Gerror:\ aborting\ %.%#,%-Gerror:\ Could\ not\ compile\ %.%#,%Eerror:\ %m,%Eerror[E%n]:\ %m,%Wwarning:\ %m,%Inote:\ %m,%C\ %#-->\ %f:%l:%c,%-G%\\s%#Downloading%.%#,%-G%\\s%#Compiling%.%#,%-G%\\s%#Finished%.%#,%-G%\\s%#error:\ Could\ not\ compile\ %.%#,%-G%\\s%#To\ learn\ more\\,%.%#
setlocal expandtab
if &filetype != 'rust'
setlocal filetype=rust
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=v:lua.require('pretty-fold').foldtext.global()
setlocal formatexpr=
setlocal formatoptions=croqnlj
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=substitute(v:fname,'::','/','g')
setlocal indentexpr=nvim_treesitter#indent()
setlocal indentkeys=0{,0},!^F,o,O,0[,0]
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal linebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal list
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal number
setlocal numberwidth=4
setlocal omnifunc=v:lua.vim.lsp.omnifunc
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=yes
setlocal smartindent
setlocal softtabstop=-1
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=noplainbuffer
setlocal statuscolumn=
setlocal statusline=%<%#lualine_c_2_command#▊\ %#lualine_c_normal#%#lualine_c_3_command#\ %#lualine_c_normal#%#lualine_c_4_command#\ \ ~/projects/rustnotes\ %#lualine_c_normal#%#lualine_c_filetype_DevIconRs_command#\ \ %#lualine_c_normal#%#lualine_c_normal#%#lualine_c_filename_command#\ main.rs\ [+]\ %#lualine_c_normal#%#lualine_c_normal#\ 1.0k\ %#lualine_c_progress_command#\ 69%%\ %#lualine_c_normal#%#lualine_c_diagnostics_warn_command#\ \ 2\ %#lualine_c_diagnostics_hint_command#\ 2\ %#lualine_c_normal#%#lualine_c_normal#\ %=\ %#lualine_c_normal#%=%#lualine_x_12_command#\ utf-8\ %#lualine_c_normal#%#lualine_x_fileformat_command#\ \ %#lualine_c_normal#%#lualine_x_branch_command#\ \ main\ %#lualine_c_normal#%#lualine_x_diff_added_command#\ \ 3\ %#lualine_x_diff_modified_command#柳\ 1\ %#lualine_x_diff_removed_command#\ 1\ %#lualine_c_normal#%#lualine_x_17_command#\ LSP:\ \ %#lualine_c_normal#%#lualine_x_18_command#\ ▊
setlocal suffixesadd=.rs
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tagfunc=v:lua.vim.lsp.tagfunc
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=99
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal winbar=%#LspSagaWinbarFolder#\ %*%#LspSagaWinbarFolderName#src%*%#LspSagaWinbarSep#\ %*%#LspSagaWinbarFileIcon#\ %*%#LspSagaWinbarFile#main.rs%*%#LspSagaWinbarSep#\ %*%#LspSagaWinbarFunction#\ main
setlocal winblend=0
setlocal winhighlight=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
8
normal! zo
let s:l = 23 - ((22 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 23
normal! 0
wincmd w
argglobal
enew
file neo-tree\ filesystem\ \[1]
balt src/main.rs
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <BS> v:lua.MPairs.autopairs_bs()
inoremap <buffer> <config.e> l<Cmd>lua require('nvim-autopairs.fastwrap').show()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal cinscopedecls=public,protected,private
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorbind
setlocal cursorcolumn
setlocal cursorline
setlocal cursorlineopt=line
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'neo-tree'
setlocal filetype=neo-tree
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=v:lua.require('pretty-fold').foldtext.global()
setlocal formatexpr=
setlocal formatoptions=tcqj
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal linebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal nomodifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal readonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=no
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statuscolumn=
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'neo-tree'
setlocal syntax=neo-tree
endif
setlocal tagfunc=
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=0
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal winbar=
setlocal winblend=0
setlocal winhighlight=Normal:NeoTreeNormal,NormalNC:NeoTreeNormalNC,SignColumn:NeoTreeSignColumn,CursorLine:NeoTreeCursorLine,FloatBorder:NeoTreeFloatBorder,StatusLine:NeoTreeStatusLine,StatusLineNC:NeoTreeStatusLineNC,VertSplit:NeoTreeVertSplit,EndOfBuffer:NeoTreeEndOfBuffer,WinSeparator:NeoTreeWinSeparator
setlocal winfixheight
setlocal winfixwidth
setlocal nowrap
setlocal wrapmargin=0
wincmd w
exe 'vert 1resize ' . ((&columns * 130 + 85) / 171)
exe 'vert 2resize ' . ((&columns * 40 + 85) / 171)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
