# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="random"
# ZSH_THEME_RANDOM_CANDIDATES=(
# 	"robbyrussell"
# 	"wezm+"
# )
ZSH_THEME_RANDOM_CANDIDATES=(
  "robbyrussell"
  "wezm+"
  "agnoster"
)
# COLORIZE PARA SYNTAX HIGHLIGHTING
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colorize
ZSH_COLORIZE_STYLE="colorful"
# ZSH_COLORIZE_TOOL=chroma
ZSH_COLORIZE_TOOL=pygmentize
# ZSH_COLORIZE_CHROMA_FORMATTER=terminal256
ZSH_COLORIZE_CHROMA_FORMATTER=terminal256

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	npm
	zsh-autosuggestions
	zsh-syntax-highlighting
	colorize
	nvm
	# - Lunes, 28 de febrero de 2022
	# copypath copia la ruta absoluta del directorio actual.
	copypath
	# copyfile pone el contenido de un archivo en el clipboard.
	# copyfile <filename>
	copyfile
	# copybuffer: Copia el texto actual de la línea de comandos
	# al portapapeles con Ctrl + o.
	copybuffer
	# Agrega comandos para navegar en el historial de directorios
	# y su jerarquía.
	# alt-arriba/abajo para entrar al parent o al primer child folder.
	# alt-izquierda para ir al directorio anterior en que estabas.
	# alt-derecha para ir al directorio siguiente (después de regresar
	# con alt-izquierda)
	dirhistory
	# history: Examinar el historial de comandos.
	# h: Imprime historial de comandos.
	# hs: Utiliza grep para buscar un comando en el historial.
	# hsi: Lo mismo que hs, pero case insensitive.
	history
	# jsontools: manejar datos JSON.
	# Hay que tomar los datos JSON y "pipe it" utilizando la
	# herramienta que desees:
	# pp_json: Imprime pretty json.
	# is_json: regresa true si es json válido, false si no.
	# Entre otros comandos.
	jsontools
	docker
	docker-compose
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Variable de entorno que le informa a GPG del shell actual.
# Esto es para firmar los commits y demás.
# Obtenido de: "Aprendiendo Git", Miguel Ángel Durán
# - Lunes, 28 de febrero de 2022
export GPG_TTY=$(tty)

# Oh My Posh - Estilo diferente en terminal
# Martes, 01 de marzo de 2022
# Tema con títulos largos en la línea de comandos.
# eval "$(oh-my-posh --init --shell zsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/v$(oh-my-posh --version)/themes/jandedobbeleer.omp.json)"

# Tema mt [Miércoles, 2 de marzo de 2022]
eval "$(oh-my-posh --init --shell zsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/v$(oh-my-posh --version)/themes/mt.omp.json)"

# Tema remk [Miércoles, 2 de marzo de 2022]
# eval "$(oh-my-posh --init --shell zsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/v$(oh-my-posh --version)/themes/remk.omp.json)"

# Tema remk [Miércoles, 2 de marzo de 2022]
# eval "$(oh-my-posh --init --shell zsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/v$(oh-my-posh --version)/themes/marcduiker.omp.json)"

# Tema remk [Miércoles, 2 de marzo de 2022]
# eval "$(oh-my-posh --init --shell zsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/v$(oh-my-posh --version)/themes/jtracey93.omp.json)"

# Tema remk [Miércoles, 2 de marzo de 2022]
# eval "$(oh-my-posh --init --shell zsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/v$(oh-my-posh --version)/themes/bubblesextra.omp.json)"

# Tema remk [Miércoles, 2 de marzo de 2022]
# eval "$(oh-my-posh --init --shell zsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/v$(oh-my-posh --version)/themes/M365Princess.omp.json)"



# export $TERM="xterm-256color"
