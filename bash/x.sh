# Edit or view a file
#
# @param ACTION - edit or view
# @param ... - name and path of file(s) to edit/view (optional)
x()
{
	[ -d "$1" ] && {
		ls $1
		return
	}

	local ACTION=$1 BIN=
	shift

	case $ACTION in
		e*)
			case "$TERM" in
				*xterm*|*rxvt)
					case "$1" in
						*ods|*odt|*[Dd][Oo][Cc]|*[Xx][Ll][Ss]|*[Pp][Pp][Ss])
							BIN='libreoffice& ooffice& soffice&'
							;;
						*png|*jpg|*jpeg|*gif|*xcf|*psd)
							BIN='gimp&'
							;;
						*svg)
							BIN='inkscape&'
							;;
						*blend)
							BIN='blender& blender-2.60&'
							;;
						*)
							BIN=$EDITOR${EDITOR:+ }'nedit& gedit& gvim& mvim& xvim&'
							;;
					esac
					;;
			esac
			BIN="$BIN vim vi emacs nano"
			;;
		v*)
			case "$1" in
				*gif|*png|*jpg|*jpeg|*tif|*tiff)
					BIN='feh&'
					;;
				*pdf)
					BIN='qpdfview&'
					;;
				*mpg|*mpeg|*mov|*wmv|*ogg|*mp3|*mp4|*wav)
					BIN='mplayer mpg123'
					;;
				*html|*htm|http://*|https://*|ftp://|*mht)
					BIN='opera& firefox&'
					;;
				*kml)
					BIN='googleearth&'
					;;
				*)
					BIN='less more view'
					;;
			esac

			BIN="$BIN open& xdg-open&"
			;;
	esac

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

alias e='x edit'
alias v='x view'
