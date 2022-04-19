# Instalación `vim-plug` para `nvim` en Windows

Martes, 19 de abril de 2022

vim-plug sirve para instalar plugins fácilmente.
[https://github.com/junegunn/vim-plug](https://github.com/junegunn/vim-plug)

## Comando Original

El comando original lo encontramos en la documentación oficial, pero lo
instala en un directorio que no debe ser.

[https://github.com/junegunn/vim-plug#windows-powershell-1](https://github.com/junegunn/vim-plug#windows-powershell-1)

~~~bash
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
~~~

## Comando que utilicé

Aquí cambié el comando, ya que el autoplug tenía que estar en la carpeta
`nvim` y no en la carpeta `~/nvim-data/site/`

iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
? > ?     ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim/autoload/plug.vim" -Force
