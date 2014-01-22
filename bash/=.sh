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

# Hex to decimal
#
# @param ... - hexadeximal numbers
hx2d()
{
	= ibase=16 "$@"
}

# Decimal to hex
#
# @param ... - decimal numbers
d2hx()
{
	= obase=16 "$@"
}

# Binary to decimal numbers
#
# @param ... - binary numbers
b2d()
{
	= ibase=2 "$@"
}

# Decimal to binary
#
# @param ... - decimal numbers
d2b()
{
	= obase=2 "$@"
}
