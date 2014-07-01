# Fast find file(s) in the current directory
#
# @param ... - patterns to find in file names
ff()
{
	local FILE
	for FILE
	do
		find . -iname "*${FILE}*"
	done
}
