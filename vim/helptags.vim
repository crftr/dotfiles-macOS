
" Ensure that helptags are generated for the vim help directory.
" There is a bug with homebrew-core, where helptags aren't generated when
" homebrew installs vim.
" https://github.com/Homebrew/homebrew-core/issues/1087

let g:DocPath = expand("$VIMRUNTIME/doc")
let g:DocTags = join([g:DocPath, "tags"], "/")
if !filereadable(g:DocTags)
  execute join(["helptags", g:DocPath])
endif
