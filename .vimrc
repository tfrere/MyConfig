
" Global settings
 set nocompatible
 syntax on
 set hlsearch
 set shiftwidth=2
 set background=dark
 set cursorline
 inoremap <S-Tab> <C-V><Tab>
 set showmatch
 set tabstop=4 softtabstop=4 shiftwidth=4
 set mouse=a
"
" " Show line number
 set number
 highlight LineNr term=bold ctermfg=darkgray guifg=darkgray
"
" " Special configuration for devel
 filetype on
 filetype plugin on
 set ofu=syntaxcomplete#Complete
 autocmd FileType c,cpp,cxx,h,fl,php set cindent|set cino=:0
 autocmd FileType make setlocal noexpandtab
"
" " Show when a line exceeds 80 chars
 au BufWinEnter * let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)
"
" " Highlight Tabs and Spaces
 au BufWinEnter * let w:m2=matchadd('Tab', '\t', -1)
 au BufWinEnter * let w:m3=matchadd('Space', '\s\+$\| \+\ze\t', -1)
 set list listchars=tab:»-,trail:·
 highlight Tab ctermbg=darkgray guibg=darkgray
 highlight Space ctermbg=darkblue guibg=darkblue
 highlight OverLength ctermbg=red ctermfg=white guibg=#592929
 match OverLength /\%81v.*/
"
" " OmniCppComplete
 let OmniCpp_NamespaceSearch = 1
 let OmniCpp_GlobalScopeSearch = 1
 let OmniCpp_ShowAccess = 1
 let OmniCpp_ShowPrototypeInAbbr = 1
 let OmniCpp_MayCompleteDot = 1
 let OmniCpp_MayCompleteArrow = 1
 let OmniCpp_MayCompleteScope = 1
 let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
