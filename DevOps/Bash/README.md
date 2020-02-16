────────────────────────────────────────────────────────────────────────────────────────
       │ File: .zshrc
────────────────────────────────────────────────────────────────────────────────────────
   1   │ # If you come from bash you might have to change your $PATH.
   2   │ # export PATH=$HOME/bin:/usr/local/bin:$PATH
   3   │
   4   │ # Path to your oh-my-zsh installation.
   5   │ export ZSH="/Users/anton/.oh-my-zsh"
   6   │
   7   │ # Set name of the theme to load --- if set to "random", it will
   8   │ # load a random theme each time oh-my-zsh is loaded, in which case,
   9   │ # to know which specific one was loaded, run: echo $RANDOM_THEME
  10   │ # See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
  11   │ ZSH_THEME=powerlevel10k/powerlevel10k
  12   │
  13   │ # Which plugins would you like to load?
  14   │ # Standard plugins can be found in ~/.oh-my-zsh/plugins/*
  15   │ # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
  16   │ # Example format: plugins=(rails git textmate ruby lighthouse)
  17   │ # Add wisely, as too many plugins slow down shell startup.
  18   │ plugins=(zsh-autosuggestions)
  19   │
  20   │ source $ZSH/oh-my-zsh.sh
  21   │ alias dev="cd /Users/anton/Documents/Yandex.Disk.localized/Develop"
  22   │ alias cat="bat"
  23   │
  24   │ # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
  25   │ [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
  26   │
  27   │ export LC_ALL=en_RU.UTF-8
  28   │ export LC_ALL=en_US.UTF-8
  29   │ test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
  30   │
────────────────────────────────────────────────────────────────────────────────────────





────────────────────────────────────────────────────────────────────────────────────────
       │ File: .p10k.zsh
────────────────────────────────────────────────────────────────────────────────────────
   1   │typeset -g POWERLEVEL9K_DIR_MAX_LENGTH=1
────────────────────────────────────────────────────────────────────────────────────────
