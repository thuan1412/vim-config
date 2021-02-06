set nocompatible

call plug#begin(stdpath('data') . '/plugged')
Plug 'ryanoasis/vim-devicons'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'patstockwell/vim-monokai-tasty'
Plug 'vim-ruby/vim-ruby'
Plug 'sbdchd/neoformat'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tomtom/tcomment_vim'

" monokai
Plug 'phanviet/vim-monokai-pro'

"Plug 'leafOfTree/vim-vue-plugin'
" Press crs (coerce to snake_case). MixedCase (crm), camelCase (crc), snake_case (crs), UPPER_CASE (cru), dash-case (cr-), dot.case (cr.), space case (cr<space>), and Title Case (crt)
Plug 'tpope/vim-abolish' 
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'
Plug 'liuchengxu/nerdtree-dash'

Plug 'airblade/vim-gitgutter'
Plug 'APZelos/blamer.nvim'

Plug 'tpope/vim-fugitive'

Plug 'kshenoy/vim-signature'

Plug 'Yggdroot/indentLine'

Plug 'liuchengxu/vista.vim'

Plug 'itchyny/calendar.vim'

" Fuzzy search 
let g:fzf_install = 'yes | ./install'
Plug 'junegunn/fzf', { 'do': g:fzf_install }
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf'

Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}

if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

Plug 'mbbill/undotree'
call plug#end()

let g:coc_global_extensions = [
            \ 'coc-actions',
            \ 'coc-clangd',
            \ 'coc-css',
            \ 'coc-cssmodules',
            \ 'coc-diagnostic',
            \ 'coc-docker',
            \ 'coc-elixir',
            \ 'coc-emmet',
            \ 'coc-eslint',
            \ 'coc-explorer',
            \ 'coc-flutter',
            \ 'coc-git',
            \ 'coc-go',
            \ 'coc-gocode',
            \ 'coc-highlight',
            \ 'coc-html',
            \ 'coc-java',
            \ 'coc-json',
            \ 'coc-lua',
            \ 'coc-marketplace',
            \ 'coc-metals',
            \ 'coc-phpls',
            \ 'coc-prettier',
            \ 'coc-project',
            \ 'coc-python',
            \ 'coc-react-refactor',
            \ 'coc-rls',
            \ 'coc-sh',
            \ 'coc-snippets',
            \ 'coc-solargraph',
            \ 'coc-sourcekit',
            \ 'coc-sql',
            \ 'coc-styled-components',
            \ 'coc-svg',
            \ 'coc-tailwindcss',
            \ 'coc-tslint-plugin',
            \ 'coc-tsserver',
            \ 'coc-vetur',
            \ 'coc-vimlsp',
            \ 'coc-webpack',
            \ 'coc-xml',
            \ 'coc-yaml',
            \ 'coc-yank',
            \ ]
          
" set up eslint and prettier
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gR <Plug>(coc-rename)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
1
" Show line numbers
set number

" fzf
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>

" Tabs have width of 2, use spaces instead of tab characters
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set number relativenumber
set nu rnu

command! -nargs=0 FF :CocCommand prettier.formatFile

" ruby
let g:ale_linters = {'ruby': ['standardrb']}
let g:ale_fixers = {'ruby': ['standardrb']}

" augroup extra_space
"     autocmd!
"     " au BufRead,BufNewFile  *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"     autocmd BufWritePre *.txt,*.js,*.ts,*.jsx,*.tsx,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
" augroup end

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>

" custommmmmmmmmmmmmmmmm
let g:coc_disable_startup_warning = 1
set clipboard=unnamedplus " use clipboard for copy and paste
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-1> :tabnext 1
nnoremap <C-2> :tabnext 2
nnoremap <C-3> :tabnext 3
nnoremap <C-a> gg v G $

" let g:dracula_colorterm = 0
set termguicolors
" let g:monokai_colorterm = 0
colorscheme monokai_pro 
set cursorline
hi CursorLine term=underline cterm=underline guibg=Grey20

" set background transparent -> niceeee
" highlight Normal guibg=none
" highlight NonText guibg=none
nnoremap <ALT-a> yy p

let g:airline#extensions#tabline#enabled = 1
" let g:airline_statusline_ontop = 1

" let g:airline#extensions#tabline#buffer_nr_show = 1

nnoremap <C-h> :History<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim commentary
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup commmentary_setup
autocmd!
autocmd FileType scss setlocal comments=s1:/*,mb:*,ex:*/ commentstring&
autocmd FileType vue setlocal comments=s1:/*,mb:*,ex:*/ commentstring&
augroup END

" airline
let g:airline#extensions#hunks#enabled=1

let g:lightline = {
\ 'colorscheme': 'monokai_pro',
\ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Yggdroot/indentLine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char_list = ['|', '¦', '┊']
let g:indentLine_enabled = 1
autocmd! User indentLine doautocmd indentLine Syntax
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#616161'

" FZF configuration 
" let g:fzf_action = {
"         \ 'ctrl-q': function('s:build_quickfix_list'),
"         \ 'ctrl-t': 'tab split',
"         \ 'ctrl-s': 'split',
"         \ 'ctrl-v': 'vsplit'
"         \}
"
command! -bang -nargs=* GGrep
        \ call fzf#vim#grep(
        \   'git grep --line-number '.shellescape(<q-args>), 0,
        \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0):

command! -bang -nargs=? -complete=dir Files
        \ call fzf#vim#files(<q-args>, {'options': [ '--info=inline',  '--bind', 'alt-a:select-all,alt-d:deselect-all', '--preview', 'cat {}']}, <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --hidden --smart-case --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4.. -e'}, 'right:50%', '?'),
  \   <bang>0)

command! -bang -nargs=* RG
        \ call fzf#vim#grep(
        \   'rg --ignore-vcs --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
        \   fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)


" All files
command! -nargs=? -complete=dir AF
        \ call fzf#run(fzf#wrap(fzf#vim#with_preview({
        \ 'options': [ '--multi','--info=inline',  '--bind', 'alt-a:select-all,alt-d:deselect-all', ],
        \   'source': 'fd --type f --hidden --follow --exclude .git .'.expand(<q-args>)
        \ })))let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Comment' } }

let g:fzf_colors = {                                                                                                                                                        
\ 'fg':      ['fg', 'fzf_fg'],                                                                                                                                            
\ 'hl':      ['fg', 'fzf_hl'],                                                                                                                                            
\ 'fg+':     ['fg', 'fzf_fgp'],                                                                                                                                           
\ 'hl+':     ['fg', 'fzf_hlp'],                                                                                                                                           
\ 'info':    ['fg', 'fzf_info'],                                                                                                                                          
\ 'prompt':  ['fg', 'fzf_prompt'],                                                                                                                                        
\ 'pointer': ['fg', 'fzf_pointer'],                                                                                                                                       
\ 'spinner': ['fg', 'fzf_spinner'] }

" NERDTree GIT 

nnoremap <space>e :CocCommand explorer<CR>

let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'cocConfig': {
\      'root-uri': '~/.config/coc',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\ }

" -----------------------

let g:WebDevIconsOS = 'Hurmit'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1

" undotree
nnoremap <F5> :UndotreeToggle<CR>

let g:calendar_google_calender = 1
let g:calendar_google_task = 1
source ~/.cache/calendar.vim/credentials.vim
