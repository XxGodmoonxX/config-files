# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zplug
source ~/.zplug/init.zsh
# theme
zplug romkatv/powerlevel10k, as:theme, depth:1

# 補完の強化
zplug "zsh-users/zsh-completions"
# 履歴補完の強化
zplug "zsh-users/zsh-autosuggestions"
# コマンドラインの文字の色付けを行うシンタックスハイライトプラグインです
# https://github.com/zsh-users/zsh-syntax-highlighting
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# ここまでに書いたプラグインのロード
zplug load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
