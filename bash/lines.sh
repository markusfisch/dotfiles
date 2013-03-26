# Show a stat of lines per file
#
# @param ... - files (optional)
lines()
{
	local F
	for F in ${@:-*}
	do
		[ -f "$F" ] && wc -l "$F"
	done | bars
}
