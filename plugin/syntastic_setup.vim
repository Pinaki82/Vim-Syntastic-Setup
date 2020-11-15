set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" http://stackoverflow.com/questions/16622992/including-header-files-recursively-for-syntastic
:menu Plugin.Syntastic.auto\ syntax\ check\ on/off\ Toggle:-\ \ \ \ :\SyntasticToggleMode   :<Esc>:<Esc>:SyntasticToggleMode<Cr>
:menu Plugin.Syntastic.Errors\ Window:-\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ :\Errors   :<Esc>:<Esc>:Errors<Cr>
:menu Plugin.Syntastic.Manully\ check\ errors\ now:-\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ :\SyntasticCheck   :<Esc>:<Esc>:SyntasticCheck<Cr>
:menu Plugin.Syntastic.Show\ info:-\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ :\SyntasticInfo   :<Esc>:<Esc>:SyntasticInfo<Cr>
:menu Plugin.Syntastic.Reset\ Syntastic:-\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ :\SyntasticReset   :<Esc>:<Esc>:SyntasticReset<Cr>


" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_c_checkers=['gcc', 'cppcheck', 'splint', 'clang_check', 'clang_tidy', 'verapp']
let g:syntastic_cpp_checkers=['gcc', 'cppcheck', 'clang_check', 'clang_tidy', 'verapp']
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" A few option for C/C++ GCC
" C options: -W -Wall -Wextra -pedantic -ansi -std=gnu99 -std=gnu11 -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wnested-externs -Wformat=2 -Wformat-security -Wformat-signedness -Wformat-y2k -Wconversion
" C++ options: -W -Wall -Wextra -fsized-deallocation -pedantic -ansi -std=gnu++98 -std=gnu++11 -std=gnu++14 -std=gnu++17 -Wmissing-declarations -Wzero-as-null-pointer-constant -Wformat=2 -Wformat-security -Wformat-signedness -Wformat-y2k -Wconversion
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
let g:syntastic_c_compiler_options = '-std=c11 -Wall -Weffc++ -Wextra -pedantic -Winit-self -Wnon-virtual-dtor -Winline -Wmissing-declarations -Wmissing-include-dirs -Wundef -Wredundant-decls -Wfloat-equal -Wmain -Wunreachable-code -Wshadow -Wcast-align -Wswitch-default -Wswitch-enum -Wmissing-prototypes -Wmissing-declarations -Wnested-externs -Wformat=2 -Wformat-security -Wformat-signedness -Wformat-y2k -Wconversion'
let g:syntastic_cpp_compiler_options = '-std=gnu++11 -std=c++11 -Wall -Weffc++ -Wextra -pedantic -Winit-self -Wnon-virtual-dtor -Winline -Wmissing-declarations -Wmissing-include-dirs -Wundef -Wredundant-decls -Wfloat-equal -Wmain -Wunreachable-code -Wshadow -Wcast-align -Wswitch-default -Wswitch-enum -Wmissing-prototypes -Wmissing-declarations -Wnested-externs -Wformat=2 -Wformat-security -Wformat-signedness -Wformat-y2k -Wconversion'
" -std=c11 -std=gnu++11 -std=c++11 -Wall -Weffc++ -Wextra -pedantic -Wfatal-errors -Winit-self -Wnon-virtual-dtor -Winline -Wmissing-declarations -Wmissing-include-dirs -Wundef -Wredundant-decls -Wfloat-equal -Wmain -Wunreachable-code -Wshadow -Wcast-align -Wswitch-default -Wswitch-enum -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wnested-externs -Wformat=2 -Wformat-security -Wformat-signedness -Wformat-y2k -Wconversion
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs=1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_remove_include_errors = 1
" first get the include dirs
" http://stackoverflow.com/questions/344317/where-does-gcc-look-for-c-and-c-header-files
" `gcc -print-prog-name=cc1plus` -v
" `gcc -print-prog-name=cc1` -v

" -------------------------------
" https://vi.stackexchange.com/questions/2572/detect-os-in-vimscript
if has("win64") || has("win32") || has("win16") || has("win32unix")
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:syntastic_cpp_config_file = $HOME . '/.vimdotwin/.syntastic_cpp_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    " *** Never use the following line ***
    " let g:syntastic_cpp_config_file = '.syntastic_cpp_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:syntastic_c_config_file = $HOME . '/.vimdotwin/.syntastic_c_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    " *** Never use the following line ***
    " let g:syntastic_c_config_file = '.syntastic_c_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:syntastic_clang_check_config_file = $HOME . '/.vimdotwin/.syntastic_clang_check_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:syntastic_clang_tidy_config_file = $HOME . '/.vimdotwin/.syntastic_clang_tidy_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:syntastic_cppcheck_config_file = $HOME . '/.vimdotcommon/.syntastic_cppcheck_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:syntastic_verapp_config_file = $HOME . '/.vimdotwin/.syntastic_verapp_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:syntastic_splint_config_file = $HOME . '/.vimdotcommon/.syntastic_splint_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  else
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:syntastic_cpp_config_file = $HOME . '/.vimdotlinux/.syntastic_cpp_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    " *** Never use the following line ***
    " let g:syntastic_cpp_config_file = '.syntastic_cpp_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:syntastic_c_config_file = $HOME . '/.vimdotlinux/.syntastic_c_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    " *** Never use the following line ***
    " let g:syntastic_c_config_file = '.syntastic_c_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:syntastic_clang_check_config_file = $HOME . '/.vimdotlinux/.syntastic_clang_check_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:syntastic_clang_tidy_config_file = $HOME . '/.vimdotlinux/.syntastic_clang_tidy_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:syntastic_cppcheck_config_file = $HOME . '/.vimdotcommon/.syntastic_cppcheck_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:syntastic_verapp_config_file = $HOME . '/.vimdotlinux/.syntastic_verapp_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    let g:syntastic_splint_config_file = $HOME . '/.vimdotcommon/.syntastic_splint_config'
    " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
endif

" *** Ue the following line whenever you get into trouble with syntastic ***
" g:syntastic_c_errorformat='%m'
" let g:syntastic_debug = 1
" let g:syntastic_debug = 3
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
let g:syntastic_c_check_header = 1
let g:syntastic_cpp_check_header = 1


