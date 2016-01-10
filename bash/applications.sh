# aliases for running OS X apps from the command line
[ -d /Applications ] && {
	alias_applications()
	{
		local D A
		for D in /Applications/*
		do
			D=${D##*/}
			A=$(echo "${D%.app}" | tr '[:upper:]' '[:lower:]')
			A=${A// /_}

			# use functions instead of aliases here because aliases
			# aren't available in other scripts
			type "$A" || eval "$A(){ open -a \"$D\" \"\$@\"; }"
		done &>/dev/null
	}

	alias_applications
	unset alias_applications
}
