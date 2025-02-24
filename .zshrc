# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to my Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

source $HOME/powerlevel10k/powerlevel10k.zsh-theme # Load powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster" # (this is one of the fancy ones)
# see https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#agnoster

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

eval $(thefuck --alias)

# User configuration

export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh

# Aliases
#
alias allah="ls -a" # Because ALLAH IS ALL SEEING ALL KNOWING - Umi prolly idk
alias konek="ln -s" # Somebody kill me
alias zshr="source ~/.zshrc" # Reload zsh
alias skhdr="skhd --restart-service"
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias trasha="rm -rf ~/.Trash/*" # Not spiting my ex but her name fits LOL
alias trashapromax="sudo rm -rf /Volumes/*/.Trashes/501?*" # Global volumes
alias trashcache="/Users/mattmohamed/TrashTheCache/TrashTheCache.sh"
alias qmkcompv1="qmk compile -kb keychron/v1_max/ansi_encoder -km matt1fy2"
alias qmkflashv1="qmk flash -kb keychron/v1_max/ansi_encoder -km matt1fy2"
alias k4pro="-kb keychron/k4_pro/ansi -km matt1fy"
alias v1max="-kb keychron/v1_max/ansi_encoder -km matt1fy2"

# Show me
alias showlaunchagents="ls -a ~/Library/LaunchAgents"
alias showerrlogs="ls -a /private/tmp"

# Open with Zed (like a noob)
alias oz="open -a "\""zed"\""" # Lazy man edit with Zed
alias ozzsh="oz ~/.zshrc"
alias ozskhd="oz ~/.skhdrc"
alias ozyab="oz ~/.yabairc"
alias ozskbar="oz ~/.config/sketchybar/sketchybarrc"

# Open with Vi (Like a PROgrammer)
alias vihh="vi ~/"
alias vizsh="vi ~/.zshrc"
alias viskhd="vi ~/.skhdrc"
alias viyab="vi ~/.yabairc"
alias viskbar="vi ~/.config/sketchybar"
alias viqmk="vi ~/qmk_firmware/keyboards/keychron/k4_pro/ansi"
alias viobs="vi ~/Documents/"\""Obsidian Vault"\""/"\""matts 2nd brain"\"""
alias videf="vi ~/.config/sketchybar/mResources"
alias vivi="vi ~/.vimrc"
alias v="vi"

# Aliases for the lolz
alias whoisgod="whoami"

export FZF_DEFAULT_OPTS='--height=90% --preview="cat {}" --preview-window=right:45%:wrap'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh # Load personal prompt config

eval "$(starship init zsh)"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
