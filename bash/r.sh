# Run given file or the next best executable
#
# @param ... - name and path of file to run (optional)
r()
{
	local F=$1 W=.

	[ -d "$F" ] && {
		W=$F
		F=
	}

	# if no file was given, offer all executables
	[ "$F" ] || {
		local FC=( `find "$W" -maxdepth 1 -type f -executable` )
		local C=${#FC[*]}

		if (( C == 0 ))
		then
			return
		elif (( C == 1 ))
		then
			F=${FC[0]}
		else
			local N=0
			for ((;;))
			do
				F=${FC[$N]}
				printf "\r${F##*/}?\n"
				read -n 1 || return
				[ "$REPLY" ] || break

				(( ++N >= C )) && N=0
			done
		fi
	}

	[ -f "$F" ] || return

	case "${F##*.}" in
		class)
			java ${F%.*}
			;;
		exe)
			mono $F
			;;
		perl|pl)
			perl $F
			;;
		ruby|rb)
			ruby $F
			;;
		php)
			php $F
			;;
		python|py)
			python $F
			;;
		lua)
			lua $F
			;;
		js)
			node $F
			;;
		*)
			bash $F
			;;
	esac
}
