alias vscode='open -a "/Applications/Visual Studio Code.app"'
alias rubymine='open -na "RubyMine.app" --args "$@"'
alias rubymine_eap='open -na "RubyMine 2023.1 EAP.app" --args "$@"'
alias editor='rubymine'
alias .e='editor'

alias .whatchanged='git ls-files -o -m --exclude-standard'
alias .gitstat='git diff --stat | grep insertions ; git diff --cached --stat | grep insertions'
alias .w='git ls-files -o -m --exclude-standard'

alias .rubo='.whatchanged | xargs -n1 -I{} bundle exec rubocop {}'
alias .erb_check='.whatchanged | grep "\.erb" | xargs -n1 -I{} erblint --config .erb-lint.yml {}'
alias .code_check='.rubo ; .erb_check'
alias .cc='.code_check'

alias .test='bundle exec rspec'
alias .rt='.test'

alias .save_stash='git stash --include-untracked -m'
alias .gs='.save_stash'


alias .be='bundle exec'

alias .rs='bin/rails s'

alias .routes='bin/rails routes -g'

alias .smerge='open -a "/Applications/Sublime Merge.app"'

alias gwtl='git worktree list'

alias .backup='git ls-files -o -m --exclude-standard | xargs -n1 -I{} ditto {}'

alias .week='date +%U'

alias .quickrebase='EDITOR=vim git rebase -i HEAD~2'

alias .backup_files='git ls-files -o -m --exclude-standard | xargs -n1 -I{} fullcp {}'

alias .find_file='find . -type f | grep'

alias .ga="git add . -p"


# Git diff new files
alias .gdnew="for next in \$( git ls-files --others --exclude-standard ) ; do git --no-pager diff --no-index /dev/null \$next; done;"

# Git diff all new and old files
alias .gdall="git --no-pager diff; .gdnew"

# This will execute tests on all filenames containing "spec" changed in the current branch
# where the base of the diff is main
alias .test_affected_specs="git diff --name-only main | grep spec | xargs -n1 -I{} bundle exec rspec {}"

# This will execute tests on all filenames containing "test" changed in the current branch
# where the base of the diff is main
alias .test_affected_tests="git diff --name-only main | grep test  | xargs -n1 -I{} bundle exec rails test {}"

alias .debug='rdgb --open -n -c --'
alias .b="bundle install"
alias .be="bundle exec"
