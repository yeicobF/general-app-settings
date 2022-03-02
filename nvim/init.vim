" LA CONFIGURACIÓN QUE ESTÁ DEBAJO LA TOMÉ DEL
"   '~/.vimrc' de Cygwin.
" Jueves, 10 de diciembre del 2020

" MODIFICADO EL Martes, 1 de diciembre del 2020
 " FUENTES:
 "
 " https://superuser.com/questions/505937/how-to-set-tab-to-4-spaces-in-vim/505948
 "
 " https://stackoverflow.com/questions/2054627/how-do-i-change-tab-size-in-vim
 "
 set tabstop=4 " Tamaño de la tabulación en caracteres.
 set shiftwidth=0 " Número de caracteres insertados al indentar (dentro de un
 " if, por ejemplo)." Borra lo indentado en lugar de caracter por caracter.
 " Si el valor >= 0, se aplica ese,
 " Si == 0, se desactiva.
 " Si < 0, se le da el valor de shiftwidth
 set softtabstop=-1
 set expandtab " Inserta espacios en lugar de tabulaciones.
 set smartindent " Indenta después de corchetes y cosas así.
 set autoindent " Indenta de acuerdo a líneas anteriores.

 " Jueves, 3 de diciembre del 2020
 "
 " https://stackoverflow.com/questions/2182427/visualize-the-right-margin-in-vim
 " set colorcolumn=80 " Mostrar la columna del margen, con 80 por estándar de
 " Git.

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
 
" -> Jueves, 10 de DICIEMBRE del 2020 [01:39AM]
" ESTARÉ SACANDO CONFIGURACIONES DE UN REPOSITORIO QUE ME ENCONTRÉ EN LÍNEA
"   EN DONDE HAY MUCHAS CONIGURACIONES:
"
" https://github.com/jdhao/nvim-config/
"
" Están repartidas en carpetas y así, por ejemplo las
" siguientes están en:
"
"   https://github.com/jdhao/nvim-config/blob/master/core/options.vim
"
"  Para que se vea subrayada la línea en la que estoy:
set cursorline

" Ask for confirmation when handling unsaved or read-only files
set confirm
" Show hostname, full path of file and last-mod time on the window title. The
" " meaning of the format str for strftime can be found in
" " http://man7.org/linux/man-pages/man3/strftime.3.html. The function to get
" " lastmod time is drawn from https://stackoverflow.com/q/8426736/6064933
" set title
" set titlestring=
" set titlestring=%{utils#Get_titlestr()}"


" En el plug#begin() se pone el directorio en donde se
" guardarán los plugin.
call plug#begin('~/AppData/Local/nvim/plugged')

" Minimalist es un plugin que da formato de color a la sintaxis,
"       como a las strings, urls, y demás.
" SITIO WEB OFICIAL:
" github.com/dikiaap/minimalista

Plug 'dikiaap/minimalist'
" Para que los símbolos como "", (), ..., hagan match y se cree otro que
" cierre.
Plug 'jiangmiao/auto-pairs'
"{{ Plugin to deal with URL
"" Highlight URLs inside vim
Plug 'itchyny/vim-highlighturl'
"}}
" For Windows and Mac, we can open an URL in the browser. For Linux, it may
" " not be possible since we maybe in a server which disables GUI.
" if g:is_win || g:is_mac
   " open URL in browser
     Plug 'tyru/open-browser.vim'
"     endif
"}}"
" Comment stuff out. Use gcc to comment out a line (takes a count), gc to
" comment out the target of a motion (for example, gcap to comment out a
" paragraph), gc in visual mode to comment out the selection, and gc in
" operator pending mode to target a comment. You can also use it as a command,
" either with a range like :7,17Commentary, or as part of a :global invocation
" like with :g/TODO/Commentary. That's it.
Plug 'tpope/vim-commentary'

call plug#end()
"
" " Después de la instalación hay que hacer esto para el Minimalist.
set t_Co=256
syntax on
colorscheme minimalist
