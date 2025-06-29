# 백틱 키 매핑 설정 (§키를 `키로 매핑)
# &>/dev/null 를 붙여서 콘솔에 출력되지 않게 숨김
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000035,"HIDKeyboardModifierMappingDst":0x700000064}]}' &>/dev/null

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search zsh-completions)

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
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

#powerlevel10k 설정
source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


## node@20
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"


## Homebrew 를 통해 설치된 SQLite를 시스템에서 기본적으로 사용하기 위해
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
# SQLite의 전처리기에 전달되는 환경 변수 설정. 헤더 파일(#include로 참조된 .h파일) 경로나 매크로 정의 등을 설정하는 데 사용
export CPPFLAGS="-I/opt/homebrew/opt/node@20/include"
# SQLite의 pkg-config(설치된 라이브러리들을 쉽게 찾고 사용할 수 있도록 도와주는 툴) 설정
export PKG_CONFIG_PATH="/opt/homebrew/opt/sqlite/lib/pkgconfig"


# 컴파일 중에 링커에게 라이브러리 경로를 전달하는 환경 변수. 외부 라이브러리를 올바르게 참조할 수 있도록 경로를 지정
# 링커(Linker)는 컴파일러가 생성한 오브젝트 파일(object files)을 결합하여 최종 실행 파일(executable)을 만드는 도구
# node@20 와 SQLite 위해 
export LDFLAGS="-L/opt/homebrew/opt/node@20/lib -L/opt/homebrew/opt/sqlite/lib"


# ngrok 쉘 자동 완성 기능 설정
# 자동 완성 기능은 ngrok 명령어를 입력할 때, 탭(tab) 키를 누르면 가능한 명령어 옵션들을 자동으로 보여주거나 입력해주는 기능
if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi


# Homebrew에서 설치한 SQLite를 우선적으로 사용하기 위해
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"

# 소프트웨어를 컴파일하거나 개발하는 과정에서 SQLite 라이브러리와 헤더 파일을 찾을 수 있도록 설정
export LDFLAGS="-L/opt/homebrew/opt/sqlite/lib"
export CPPFLAGS="-I/opt/homebrew/opt/sqlite/include"

# pkg-config가 SQLite의 패키지 구성 정보를 올바르게 찾을 수 있도록
export PKG_CONFIG_PATH="/opt/homebrew/opt/sqlite/lib/pkgconfig"


# Added by Windsurf
export PATH="/Users/magnapax/.codeium/windsurf/bin:$PATH"
