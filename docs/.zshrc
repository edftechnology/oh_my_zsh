# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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
plugins=(git)

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

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

# Adicionar plugins do Zsh (exemplo)
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Inicialização do Conda (gerado pelo conda init)
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/edenedfsls/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/edenedfsls/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/edenedfsls/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/edenedfsls/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Se desejar, você pode adicionar personalizações do prompt do Powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# OPENFOAM.COM:
# export LD_LIBRARY_PATH=/path/to/qt/lib:$LD_LIBRARY_PATH
# source /usr/lib/openfoam/openfoam2312/etc/bashrc
# export WM_THIRD_PARTY_DIR=/usr/lib/openfoam/openfoam2312/ThirdParty
# export PV_PLUGIN_PATH=/usr/lib/x86_64-linux-gnu/paraview-5.10/plugins
# export FOAM_INST_DIR=/usr/lib/openfoam
# export WM_PROJECT_USER_DIR=/home/$USER/foam/foam-extend-5.0
# export PATH=~/OpenFOAM/edenedfsls-v2312/platforms/linux64GccDPInt32Opt/bin:$PATH
# alias openfoam="source /usr/lib/openfoam/openfoam2312/etc/bashrc"
# export MPI_ARCH_PATH=/usr/lib/x86_64-linux-gnu/openmpi
# export PATH=$MPI_ARCH_PATH/bin:$PATH

# FOAM-EXTEND:
# alias fe5='source /home/edenedfsls/foam/foam-extend-5.0/etc/bashrc'
# export WM_PROJECT_DIR=/home/$USER/foam/foam-extend-5.0
# source /home/edenedfsls/foam/foam-extend-5.0/etc/bashrc
# export PATH=/usr/bin:$PATH

# OPENFOAM.ORG:
export PATH=/usr/bin:$PATH
export WM_THIRD_PARTY_DIR=/opt/openfoam11/thirdparty
source /opt/openfoam11/etc/bashrc
export WM_PROJECT_DIR=/opt/openfoam11

# Correção para o Qt rodar corretamente com xcb
unset QT_QPA_PLATFORM_PLUGIN_PATH
unset LD_LIBRARY_PATH
export QT_QPA_PLATFORM=xcb

# Correção para o Rocket Propulsion Analysis (RPA):
export LD_LIBRARY_PATH="$HOME/Desktop/RPA-2.3.2-standard-linux-x86-64:$LD_LIBRARY_PATH"

# Adiciona automaticamente ao iniciar a sessão
# eval "$(ssh-agent -s)" > /dev/null
# ssh-add ~/.ssh/id_rsa 2>/dev/null

# =========================
#  Linux Cheat Sheet Aliases
# =========================

# ---- PRINCIPAIS ALIASES ----
alias ls='ls -alF'
alias mkdir='mkdir -pv'
alias tree='tree -alF'

# ---- Atualização e Limpeza do Sistema ----
alias update='sudo apt update && sudo apt list --upgradable && sudo apt full-upgrade -y'
alias cleanapt='sudo apt clean && sudo apt autoclean && sudo apt autoremove -y'

# ---- Navegação Rápida ----
alias home='cd ~'
alias docs='cd ~/Documents'
alias desk='cd ~/Desktop'

# ---- Listagem de Arquivos e Pastas ----
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

# ---- Busca e Inspeção ----
alias grep='grep --color=auto'
alias finddir='find . -type d -name'
alias findfile='find . -type f -name'

# ---- Monitoramento de Sistema ----
alias meminfo='free -h'
alias cpuinfo='lscpu'
alias diskuse='df -h'
alias proc='ps aux --sort=-%mem | head'
alias topcpu='ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head'

# ---- Rede ----
alias myip='hostname -I'
alias pingg='ping google.com'
alias netlisten='netstat -pntlu'

# ---- Transferência de Arquivos ----
alias scpup='scp'
alias rsyncup='rsync -avz'

# ---- Informações de Hardware ----
alias usbinfo='lsusb'
alias pciinfo='lspci'
alias diskinfo='lsblk'
alias cpumodel='cat /proc/cpuinfo | grep "model name" | uniq'

# ---- Processos ----
alias killpid='kill -9'
alias psgrep='ps aux | grep -i'

# ---- Uso de Disco ----
alias diskfree='df -h'
alias diskdu='du -sh * 2>/dev/null'

# ---- Segurança ----
alias sshcon='ssh'
alias sftpcon='sftp'

# =========================
#  Linux Cheat Sheet Aliases
# =========================

# ---- Atualização e Limpeza do Sistema ----
alias update='sudo apt update && sudo apt list --upgradable && sudo apt full-upgrade -y'
alias cleanapt='sudo apt clean && sudo apt autoclean && sudo apt autoremove -y'

# ---- Navegação Rápida ----
alias home='cd ~'
alias docs='cd ~/Documents'
alias desk='cd ~/Desktop'

# ---- Listagem de Arquivos e Pastas ----
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

# ---- Busca e Inspeção ----
alias grep='grep --color=auto'
alias finddir='find . -type d -name'
alias findfile='find . -type f -name'

# ---- Monitoramento de Sistema ----
alias meminfo='free -h'
alias cpuinfo='lscpu'
alias diskuse='df -h'
alias proc='ps aux --sort=-%mem | head'
alias topcpu='ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head'

# ---- Rede ----
alias myip='hostname -I'
alias pingg='ping google.com'
alias netlisten='netstat -pntlu'

# ---- Transferência de Arquivos ----
alias scpup='scp'
alias rsyncup='rsync -avz'

# ---- Informações de Hardware ----
alias usbinfo='lsusb'
alias pciinfo='lspci'
alias diskinfo='lsblk'
alias cpumodel='cat /proc/cpuinfo | grep "model name" | uniq'

# ---- Processos ----
alias killpid='kill -9'
alias psgrep='ps aux | grep -i'

# ---- Uso de Disco ----
alias diskfree='df -h'
alias diskdu='du -sh * 2>/dev/null'

# ---- Segurança ----
alias sshcon='ssh'
alias sftpcon='sftp'

# ---
# ATALHOS PARA PASTAS:
export CDPATH=$CDPATH:/home/edenedfsls/Documents/Downloads/unix
# ---

# ---- PRINCIPAIS ALIASES ----
alias cea="~/cea/cea_run"
alias cdaudithas='cd /home/edenedfsls/Documents/UNIVERSITIES/ITA/MESTRADO/eden_denis/thesis/subs/submodules/audithas'  # Específico
alias cdkmeans="cd /home/edenedfsls/Documents/UNIVERSITIES/ITA/MESTRADO/eden_denis/thesis/subs/submodules/k_means_thesis/"
alias cdlatexpresentationtemplate='cd /home/edenedfsls/Documents/UNIVERSITIES/ITA/MESTRADO/eden_denis/SEMESTRES/latex_presentation_template'  # Específico
alias cdlatexthetistemplate='cd /home/edenedfsls/Documents/UNIVERSITIES/ITA/MESTRADO/eden_denis/SEMESTRES/latex_thesis_template/subs/submodules/audithas'  # Específico
alias cdthesis="cd /home/edenedfsls/Documents/UNIVERSITIES/ITA/MESTRADO/eden_denis/thesis/"
alias cdubuntu='cd /home/edenedfsls/Documents/Downloads/unix/ubuntu/'
alias ls='ls -alF'
alias gitmergeandcleanup='./subs/submodules/shell_scripts/git_merge_and_cleanup.sh'
alias preparerepo='./subs/submodules/shell_scripts/prepare_repo.sh'
alias mkdir='mkdir -pv'
alias python='python3.10'
alias python3='python3.10'
alias tree='tree -alF'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown now'
alias suspend='sudo systemctl suspend'

export PATH="$HOME/.npm-global/bin:$PATH"
