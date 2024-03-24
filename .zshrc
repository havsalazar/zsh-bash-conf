source ~/.nvm/nvm.sh
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
#source ~/.zsh-nvm/zsh-nvm.plugin.zsh
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export LD_LIBRARY_PATH=/home/havsa/.local/lib/python3.10/site-packages/nvidia/cudnn/lib/:$LD_LIBRARY_PATH 

alias catf="fzf --preview 'batcat --color=always --style=numbers --line-range=:500 {}'"
alias bat ="batcat"
#alias check-size ="du -h --max-depth=1 | sort -h -r"
alias cd-flow="cd ~/airflow/dags"
alias cd-d="cd /mnt/d"
alias jupyter="~/.local/bin/jupyter-lab"
alias remove-spec="find . -type f -name '*.spec.ts' -delete"
# Load Angular CLI autocompletion.
source <(ng completion script)

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

function checksize(){
	du -h --max-depth=1 "${1:-.}" | sort -h -r
}
function open-ex(){
	explorer.exe "${1:-.}"
}
