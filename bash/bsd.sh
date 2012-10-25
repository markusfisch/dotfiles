# Auto-complete BSD/OSX find to behave like GNU find
#
# @param ... - find params
find --version &>/dev/null || find()
{
	local P=
	[ -d "$1" ] || P=.
	command find $P "$@"
}

# Make BSD/OSX cp/mv behave like GNU cp/mv i.e. fix that counter-intuitive
# behaviour of copying/moving files instead of directories when given with
# a closing slash
#
# @param ... - argument to cp
cp --version &>/dev/null || {
	fix_cp_mv()
	{
		local C
		for C in cp mv
		do
			eval "$C()
{
	local A ARGS=()
	for A in \"\$@\"
	do
		[ -d \"\$A\" ] && A=\${A%/}
		ARGS=( \"\${ARGS[@]}\" \"\$A\" )
	done

	command $C \"\${ARGS[@]}\"
}"
		done
	}

	fix_cp_mv
	unset fix_cp_mv
}
