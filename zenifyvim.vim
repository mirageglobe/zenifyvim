" ======== Custom Vim Config ========
"
" - http://items.sjbach.com/319/configuring-vim-right
" - Custom Colors : http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
" - Color chart : http://choorucode.com/2011/07/29/vim-chart-of-color-names/
" - http://www.sbf5.com/~cduan/technical/vi/vi-4.shtml
" - http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html

" hi <groupname> cterm=italia|bold ctermbg=1~255 ctermfg=1~255 .. gui is similar
" set term=xterm-256color " do not! enable. this messes up some linux machines where term=screen

" ===== Config =====

colorscheme default
" loaded to prevent errors of color sets. the following schemes will reset the colors anyway

set background=dark

" ----- Visual Major Group

hi normal       cterm=NONE    ctermbg=234     ctermfg=grey
              \ gui=NONE      guibg=#1c1c1c   guifg=#dadada
" DEFAULT e.g.pablo|Menlo\ Regular, (important|common) needs to be set first

hi comment      cterm=NONE    ctermbg=NONE    ctermfg=243
              \ gui=NONE      guibg=NONE      guifg=#767676
" any comments  / within a program

hi constant     cterm=NONE    ctermbg=NONE    ctermfg=185
              \ gui=NONE      guibg=NONE      guifg=#d7d75f
" any string e.g.#121212|233, (common) char, number, bool. program constants, such as numbers, quoted strings, or true/false

hi identifier   cterm=NONE    ctermbg=NONE    ctermfg=175
              \ gui=NONE      guibg=NONE      guifg=#d787af
" any variable name or function

hi statement    cterm=NONE    ctermbg=NONE    ctermfg=125
              \ gui=NONE      guibg=NONE      guifg=#af005f
" any statement e.g.if then else, (common) statement, usually a keyword like 'set', 'if' or 'while'

hi preproc      cterm=NONE    ctermbg=NONE    ctermfg=5
              \ gui=NONE      guibg=NONE      guifg=#800080
" any preprocessor e.g.#include #define, (common) preprocessor, such as '#include' in C

hi type         cterm=NONE    ctermbg=NONE    ctermfg=105
              \ gui=NONE      guibg=NONE      guifg=#8787ff
" any type e.g.int long char, (common) variable datatype, such as 'int'

hi special      cterm=NONE    ctermbg=NONE    ctermfg=146
              \ gui=NONE      guibg=NONE      guifg=#afafd7
" any special symbol e.g.(),used for special characters like brackets '(' or '\n' in strings

hi underlined   cterm=NONE    ctermbg=Red     ctermfg=NONE
              \ gui=NONE      guibg=Red       guifg=NONE
" any text that stands out e.g. html links ... text that should be underlined

hi ignore     cterm=NONE      ctermbg=Red     ctermfg=NONE
              \ gui=NONE      guibg=Red       guifg=NONE
" left blank and hidden

hi error      cterm=NONE      ctermbg=Red     ctermfg=NONE
              \ gui=NONE      guibg=Red       guifg=NONE
" any error construct

hi todo       cterm=NONE      ctermbg=Red     ctermfg=NONE
              \ gui=NONE      guibg=Red       guifg=NONE
" anything that needs extra attention, keywords TODO FIXME XXX

" ----- Visual Minor Group

hi linenr       cterm=NONE    ctermbg=NONE    ctermfg=237
              \ gui=NONE      guibg=NONE      guifg=#3a3a3a
" e.g.62, line number color

hi nontext      cterm=NONE    ctermbg=NONE    ctermfg=55
              \ gui=NONE      guibg=NONE      guifg=#875fff
" e.g.~, char at end of file (important|common)

hi pmenuthumb   cterm=NONE    ctermbg=NONE    ctermfg=55
              \ gui=NONE      guibg=NONE      guifg=#875fff
" na

hi cursor       cterm=NONE    ctermbg=15      ctermfg=NONE
              \ gui=NONE      guibg=#ffffff   guifg=NONE
" the cursor

hi lcursor      cterm=NONE    ctermbg=15      ctermfg=NONE
              \ gui=NONE      guibg=#ffffff   guifg=NONE
" the cursor

hi cursorline   cterm=NONE    ctermbg=235     ctermfg=NONE
              \ gui=NONE      guibg=#262626   guifg=NONE
" highlight the current line



" ----- Status Line

hi statusline   cterm=NONE    ctermbg=236     ctermfg=NONE
              \ gui=NONE      guibg=#262626   guifg=NONE
" highlight the current line

if version >= 700
  au InsertEnter * hi StatusLine   cterm=NONE    ctermbg=236     ctermfg=185
                                 \ gui=NONE      guibg=#303030   guifg=#d7d75f
  au InsertLeave * hi StatusLine   cterm=NONE    ctermbg=236     ctermfg=NONE
                                 \ gui=NONE      guibg=#303030   guifg=NONE
endif

" ----- Highlight trailing space and tabs

hi SpecialKey   cterm=NONE    ctermbg=red     ctermfg=NONE
              \ gui=NONE      guibg=red       guifg=NONE      " highlight the current line

