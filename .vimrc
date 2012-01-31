
call pathogen#infect()

" Activer la coloration et l'indentation 
syn  on
set  syntax =on
filetype  indent plugin on

" window geometry
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=120
  endif
endif

" Désactiver le mode compatibilité
set  nocp

" nowrap lines
set nowrap

" Afficher les numéros de ligne
set  nu

" Activer la souris pour le mode shell
set  mouse =a

" Afficher les parenthèses correspondantes
set  showmatch

" Modifier la taille des tabulations
set  tabstop =4
set  shiftwidth =4
set  softtabstop =4

" (ou les remplacer en espaces)
" set  expandtab

" Afficher les résultats de la recherche au moment de la saisie
set  incsearch

" Recherche sensible à la casse, ou pas, ou un peu
set  ignorecase
set  smartcase

set  foldmethod =syntax    "Réduira automatiquement les fonctions et blocs (#region en C# par exemple)

" Afficher la ligne contenant le curseur
set  cursorline

" "<C-X><C-O>" exécute la complétion intelligente, on le mappe sur CTRL+SPACE
imap  <C-Space> <C-X><C-O>

" save
map <C-O> <Esc>:w<CR>
imap <C-O> <Esc>:w<CR>

" quit
map <C-X> <Esc>:q<CR>
imap <C-X> <Esc>:q<CR>
map <C-X><C-X> <Esc>:q!<CR>
imap <C-X><C-X> <Esc>:q!<CR>

" couleurs
colorscheme zenburn

" autocmd vimenter * NERDTree

" autocmd vimenter * indent_guides

