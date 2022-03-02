" MODIFICADO EL Martes, 1 de diciembre del 2020
" FUENTES:
" 	https://superuser.com/questions/505937/how-to-set-tab-to-4-spaces-in-vim/505948
" 	https://stackoverflow.com/questions/2054627/how-do-i-change-tab-size-in-vim
"
set tabstop=4 " Tamaño de la tabulación en caracteres.
set shiftwidth=0 " Número de caracteres insertados al indentar (dentro de un if, por ejemplo).
" Borra lo indentado en lugar de caracter por caracter.
" Si el valor >= 0, se aplica ese,
" Si == 0, se desactiva.
" Si < 0, se le da el valor de shiftwidth
set softtabstop=-1
set expandtab " Inserta espacios en lugar de tabulaciones.
set smartindent " Indenta después de corchetes y cosas así.
set autoindent " Indenta de acuerdo a líneas anteriores.

" Jueves, 3 de diciembre del 2020
" https://stackoverflow.com/questions/2182427/visualize-the-right-margin-in-vim
" set colorcolumn=80 " Mostrar la columna del margen, con 80 por estándar de Git.

" https://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
" Mostrar en rojo los caracteres que sobrepasan los 80 caracteres.
match ErrorMsg '\%>80v.\+'
" https://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
" Mostrar números de línea a la izquierda:
"   https://linuxize.com/post/how-to-show-line-numbers-in-vim/
set number

" Habilitar la opción de resaltado de sintaxis con colores
syntax on
" Elegir un tema de colores para la sintaxis
" colorscheme deus
