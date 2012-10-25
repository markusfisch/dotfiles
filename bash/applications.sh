# aliases for running OS X apps from the command line
[ -d /Applications ] && {
	alias_applications()
	{
		local D A
		for D in /Applications/*
		do
			D=${D##*/}
			A=`echo ${D%.app} | tr A-Z a-z`

			type $A || alias $A="open -a ${D}"
		done &>/dev/null
	}

	alias_applications
	unset alias_applications
}
