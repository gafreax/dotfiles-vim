" gaflinter.vim - A linter manager, actuali it works for php file
" Maintainer:   Gabriele Fontana
" Version:      0.1

function PhpLint()
    let l:filename=expand('%:t')
    if l:filename =~ '.php'
        echom 'PHP Linter'
        exec 'php -l ' . l:filename . ' |grep -v "Error parsing"')
    endif
endfunction

command! PhpLint call PhpLint()
