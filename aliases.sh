# Color output
alias ls='eza --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'

# Sway is my "no distractions" environment (and also doesn't support window 
# swallowing)
if [ $XDG_CURRENT_DESKTOP="sway" ]
then
	alias vim='nvim'
else
	alias vim='neovide --no-fork &> /dev/null'
fi

# Shortcuts
alias ll='ls -l'
alias la='ll -a'
alias c='clear'
alias vim.="vim ."
alias svim='sudoedit'
alias man='batman'
alias nf='neofetch'
alias mrun="mvn compile && mvn exec:java"

