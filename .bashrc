# Created by: Mikael Amare
# Created on: Nov-2024
# .bashrc file

parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1='\n\[\033[1;30m\]┌ \[\033[0;34m\]$(hostname) \[\e[38;5;135m\]$(pwd)\n\[\033[1;30m\]└ \[\033[0;34m\]Mikael-Amare\[\e[38;5;27m\]\[\033[33m\]$(parse_git_branch) ↦ \[\e[0m\]'

PROMPT_DIRTRIM=1 #shows just the current directory name
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ,='cd ..'

alias lintjava='java -jar /home/Mikael-Amare/dotfile/linter/checkstyle.app -c /home/Mikael-Amare/dotfile/linter/sun_checks.xml *.java'

# for bun & deno
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
export DENO_INSTALL="$HOME/.deno"
export PATH=$DENO_INSTALL/bin:$PATH

# Created by `pipx` on 2024-11-19 14:29:15
export PATH="$PATH:/home/Mikael-Amare/.local/bin"
