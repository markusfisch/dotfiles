alias ga='git add'
alias gaa='git add --all'
alias gap='git add -p'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gdn='git diff --name-only'
alias gf='git fetch'
alias gi='git init'
alias gl='git log'
alias glg='git log --graph'
alias gm='git merge'
alias gp='git push'
alias gs='git status'
alias gsh='git show'
alias gt='git tag'
alias gundo='git reset --soft HEAD~1'

# Remove a commit
#
# @param 1 - commit to remove
grm()
{
	local COMMIT=$1
	shift
	git rebase --onto "${COMMIT}^" "${COMMIT}" "$@"
}
