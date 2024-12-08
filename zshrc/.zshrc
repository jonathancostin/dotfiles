export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
ZSH_THEME="tonotdocustom"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Set-up icons for files/folders in terminal
alias ls='eza --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias ytc='yt-dlp -f "bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/best[height<=1080][ext=mp4]" -o "~/Videos/%(title)s.%(ext)s" --yes-playlist'
alias ytp='yt-dlp -f "bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/best[height<=1080][ext=mp4]" -o "~/Videos/%(title)s.%(ext)s" --yes-playlist'
alias yt='yt-dlp -f "bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/best[height<=1080][ext=mp4]" -o "~/Videos/%(title)s.%(ext)s"'
alias remove='pacman -Qdtq | sudo pacman -Rns -'
alias vi='nvim'
alias qq='fzf --preview="cat {}" | xargs -r nvim'
alias supercd='cd "$(fzf --preview="if [ -d {} ]; then ls -la {}; else cat {}; fi" | xargs -r dirname)"'
alias yy='yay -Sy'
alias upgrade='yay -Syu && sudo pacman -Syu'
alias daily='cd ~/Main/Daily/'

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
