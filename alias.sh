##############################
### Aliases
##############################

alias be="bundle exec"
alias bi="brew install"

# Unix
alias la="ls -lah"
alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30' # Most used commands
#alias vdots="vim ~/Code/dotfiles"
#alias cddots="cd ~/Code/dotfiles"
alias mkcd='function _mkcd() { mkdir -p $1; cd $1; }; _mkcd'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias prettyjson='python -m json.tool'

# Rails
alias rs="rails server"
alias rc="rails console"
alias rr="rake routes"
alias guard="be guard"
alias rdbm="rake db:migrate"
alias rdbtp="rake db:test:prepare"
alias rdbd="rake db:drop"
alias rdbs="rake db:seed"
alias rdbc="rake db:create"
alias rdbr="rake db:rollback"