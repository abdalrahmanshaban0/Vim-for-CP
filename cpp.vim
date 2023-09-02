vim9script
:112
def Run_CPP()
    wa!
    set makeprg=g++\ %
    silent make
    wincmd l
   
    below terminal ./a.out
    silent !rm a.out
    set autoread
    redraw!
    cwindow
enddef

#copy your test case and just ctrl + t 
#will clear and paste in input.txt and return you to main.cpp

def Past_Tests()
    wincmd w
    #startinsert
    :%d
    set autoread
    set autowrite
    silent !xclip -o clipboard > input.txt
    redraw!
    wincmd h
enddef
nnoremap <buffer> <C-s> :vs input.txt <bar> :wincmd h <bar> :vertical resize 130 <LF>


nnoremap <buffer> <F9> <ScriptCmd>Run_CPP() <LF>
nnoremap <buffer> <C-t> <ScriptCmd>Past_Tests()<LF>
#nnoremap <buffer> <C-w> :%y+<LF>
