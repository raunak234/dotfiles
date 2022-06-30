# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi




# Custom Variables
EDITOR=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

#aliases
alias music='ncmpcpp'
alias download='sh ~/.local/src/scripts/download.sh'
alias install='sudo pacman -S'
alias remove='sudo pacman -R'
alias np='sudo systemctl restart NetworkManager'
alias hp='bluetoothctl power on ; bluetoothctl connect 1A:1B:00:03:9B:A4'
alias bb='upower -d | grep -A 8 WENKEY | grep percentage | grep -o '\''[0-9]*'\'
alias font='setfont ter-118n'
alias share='curl -F "file=@$(find $HOME -type f | rofi -dmenu -i -p "search")" 0x0.st'
alias mnt='exec ~/.local/src/scripts/dmenumount'


#load stuff
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/autojump/autojump.zsh 2>/dev/null
source ~/.local/src/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
