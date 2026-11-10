fish_add_path $HOME/.local/bin$PATH

alias c='clear'
alias ll='eza -lh -a -F --icons=auto'
alias ls='eza -l -a -F --icons=auto'
alias lst='eza -t --icons=auto'
alias l="eza -1 -a"

alias g='gitui'

alias n='nvim'

abbr mkdir 'mkdir -p'
abbr c 'cp -r'

set fish_greeting ""

#check if starship installed, if so, initialize it!!!!
if type -q starship
	starship init fish | source
end
