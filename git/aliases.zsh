# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

alias a="!git status --short | peco | awk '{print $2}' | xargs git add"
alias d='diff'
alias co='checkout'
alias ci='commit'
alias ca='commit -a'
alias ps="!git push origin $(git rev-parse --abbrev-ref HEAD)"
alias pl="!git pull origin $(git rev-parse --abbrev-ref HEAD)"
alias st='status'
alias br='branch'
alias ba='branch -a'
alias bm='branch --merged'
alias bn='branch --no-merged'
alias df="!git hist | peco | awk '{print $2}' | xargs -I {} git diff {}^ {}"
alias hist='log --pretty=format:\"%Cgreen%h %Creset%cd %Cblue[%cn] %Creset%s%C(yellow)%d%C(reset)\" --graph --date=relative --decorate --all'
alias llog='log --graph --name-status --pretty=format:\"%C(red)%h %C(reset)(%cd) %C(green)%an %Creset%s %C(yellow)%d%Creset\" --date=relative'
alias open="!hub browse"
alias type='cat-file -t'
alias dump='cat-file -p'
alias find="!f() { git log --pretty=format:\"%h %cd [%cn] %s%d\" --date=relative -S'pretty' -S\"$@\" | peco | awk '{print $1}' | xargs -I {} git diff {}^ {}; }; f"
# edit conflicted file on merge
alias edit-unmerged="!f() { git ls-files --unmerged | cut -f2 | sort -u ; }; vim `f`"
# add conflicted file on merge
alias add-unmerged="!f() { git ls-files --unmerged | cut -f2 | sort -u ; }; git add `f`"
