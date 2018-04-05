# Evaluate arithmetic expressions
#
# @param ... - arithmetic expressions
=() {
	local X A
	for A
	do
		X=$X${X:+ }"$A;"
	done
	echo "$X" | bc -l
}

# Hex to decimal
#
# @param ... - hexadeximal numbers
hx2d() {
	= ibase=16 $(echo "$@" | tr a-z A-Z)
}

# Decimal to hex
#
# @param ... - decimal numbers
d2hx() {
	= obase=16 "$@"
}

# Binary to decimal numbers
#
# @param ... - binary numbers
b2d() {
	= ibase=2 "$@"
}

# Decimal to binary
#
# @param ... - decimal numbers
d2b() {
	= obase=2 "$@"
}

# Convert a hex color to normalized values
#
# @param ... - color in hexadeximal notation
hx2gl() {
	local ARG I L D R V
	for ARG
	do
		case ${#ARG} in
		1) L=1; R=1; D=1;;
		2) L=1; R=2; D=0;;
		3) L=1; R=3; D=1;;
		4) L=2; R=4; D=0;;
		6) L=2; R=6; D=0;;
		8) L=2; R=8; D=0;;
		*) echo 'error: invalid argument' >&2; return 1;;
		esac
		for ((I=0; I < R; I += L))
		do
			V=${ARG:$I:$L}
			(( D )) && V=$V$V
			= "$(hx2d "$V")/255"
		done | while read -r
		do
			(( LINE++ > 0 )) && echo -n ', '
			echo -n "${REPLY:0:4}"
		done
		echo
	done
}
