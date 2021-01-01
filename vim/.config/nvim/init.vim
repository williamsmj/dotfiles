set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

if filereadable('/Users/mike/.ves/neovim2/bin/python')
    let g:python_host_prog = '/Users/mike/.ves/neovim2/bin/python'
endif
if filereadable('/Users/mike/.ves/neovim3/bin/python')
    let g:python3_host_prog = '/Users/mike/.ves/neovim3/bin/python'
endif

lua require('lspconfig').tsserver.setup{ on_attach=require'completion'.on_attach }
lua require('lspconfig').pyright.setup{}

lua <<
    CorpusDirectories = {
      ['~/notes'] = {
        autocommit = true,
        autoreference = false,
        autotitle = 1,
        base = './',
        transform = 'local',
      },
  }
.

let g:CorpusPreviewWinhighlight='Normal:Normal'

au TermOpen * setlocal nonumber norelativenumber
tnoremap <Esc> <C-\><C-n>
nmap <leader>t :terminal<cr>i
