# Remove temporary waste files
#
# @param 1 - root path (optional)
cleanup()
{
	local F R=${1:-.}
	for F in \
		'.DS_Store' \
		'Thumbs.db' \
		'*~'
	do
		find "$R" -name "$F" -exec rm {} \;
	done
}
