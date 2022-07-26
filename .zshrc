parse_git_branch()
{
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
setopt PROMPT_SUBST
export PS1=$'\e[0;32m%~\e[0m\e[0;33m$(parse_git_branch)\e[0m%  $ ' # Yes, no template k∫

EDITOR="nvim"


alias code="nvim"
alias nvi="nvim"
alias ni="nvim"
alias n="nvim"
alias nconf="n ~/.config/nvim/init.vim"
alias py="python3"

export PATH=/opt/homebrew/bin:$PATH
