# Fast find file(s) in the current directory
#
# @param ... - patterns to find in file names
ff()
{
	local F
	for F in "$@"
	do
		find . -iname "*$F*"
	done
}
