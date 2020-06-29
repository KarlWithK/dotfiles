# personal variables
export BROWSER="firefox" 
export COLORTERM="truecolor"
export EDITOR="nvim"
export VISUAL="nvim"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export READER="zathura"
export TERMBROWSER="lynx"
export TERMINAL="alacritty"
export TERM="xterm-256color"

# enviroment variables
export GREP_COLOR='1;33'
export LESSHISTFILE="-"
export WGETRC="$HOME/.config/wget/wgetrc"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export GTK_THEME=Sweet-Dark
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_PATH="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem
export GOPATH="$XDG_DATA_HOME"/go
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export IPYTHONDIR="$XDG_CONFIG_HOME"/ipython
export PLTUSERHOME="$XDG_DATA_HOME"/racket
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc

# man
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"

# path
export PATH="$PATH:$HOME/.local/bin:$GOPATH/bin:$GEM_HOME/ruby/2.7.0/bin:$GEM_HOME/bin:$CARGO_HOME/bin"

# startx
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

[ -f ~/.config/zsh/.zshrc ] && source ~/.config/zsh/.zshrc
