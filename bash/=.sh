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
# @param ... - hex number without prefix
hx2d()
{
	echo "ibase=16; $@" | bc -l
}

# Decimal to hex
#
# @param ... - decimal number
d2hx()
{
	echo "obase=16; $@" | bc -l
}
