# Find the first available binary from BIN and run it with the given arguments
#
# @param ... - name and path of file(s) to open (optional)
run()
{
	local B X
	for B in $BIN
	do
		X=${B%&}

		type $X &>/dev/null || continue

		if [ ${B:${#B}-1:1} == '&' ]
		then
			$X "$@" &>/dev/null &
		else
			$X "$@"
		fi

		break
	done
}
