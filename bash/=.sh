# Evaluate arithmetic expressions
#
# @param ... - arithmetic expressions
=()
{
	local X A
	for A in $@
	do
		X=$X${X:+ }"$A;"
	done
	echo "$X" | bc -l
}
