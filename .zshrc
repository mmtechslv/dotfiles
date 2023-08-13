# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export LANG=C.UTF-8

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"

export PATH
ZSH_BASE=$HOME/dotfiles


# Load Antigen
source $ZSH_BASE/antigen/antigen.zsh

# Load Antigen configurations
antigen init $ZSH_BASE/.antigenrc

# Powerlevel9k Configurations

export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator vi_mode)
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv anaconda pyenv)
export POWERLEVEL9K_PROMPT_ON_NEWLINE=true
export POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
export POWERLEVEL9K_VIRTUALENV_SHOW_WITH_POETRY=true
export POWERLEVEL9K_POETRY_VENV_PROJECT_ONLY=true


# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
export PATH="$HOME/development/flutter/bin:$PATH"
export PATH="$HOME/development/android-studio/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mmtechslv/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mmtechslv/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/home/mmtechslv/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mmtechslv/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#
# This command prevents piping to less. Source: https://superuser.com/questions/820943/typing-git-log-oneline-in-oh-my-zsh-pipes-to-less
unset LESS;

# Changes username@hostname to username
# prompt_context() {
#   if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#     prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
#   fi
# }

# Measure tool. Source: https://blog.mattclemente.com/2020/06/26/oh-my-zsh-slow-to-load.html
timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

PATH="/home/mmtechslv/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/mmtechslv/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/mmtechslv/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/mmtechslv/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/mmtechslv/perl5"; export PERL_MM_OPT;

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Alias
alias pll="pls --details"
alias lsh="/home/mmtechslv/git/gt/gaintheory-rovalab/launch.sh"
alias cdrlab="cd /home/mmtechslv/git/gt/gaintheory-rovalab" 
alias cdpmaf="cd /home/mmtechslv/Documents/IYTE\ Documents/My\ Publications/PhyloMAF"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export VISUAL=vim
export EDITOR="$VISUAL"
PATH="$HOME/.local/share/JetBrains/Toolbox/scripts${PATH:+:${PATH}}"; export PATH

