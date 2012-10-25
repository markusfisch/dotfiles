# Edit file
#
# @param ... - name and path of file(s) to edit (optional)
e()
{
	[ -d "$1" ] && {
		ls $1
		return
	}

	local E=$EDITOR

	case "$TERM" in
		*xterm*|*rxvt)
			case "$1" in
				*ods|*odt|*[Dd][Oo][Cc]|*[Xx][Ll][Ss]|*[Pp][Pp][Ss])
					E='libreoffice& ooffice& soffice&'
					;;
				*png|*jpg|*jpeg|*gif|*xcf|*psd)
					E='gimp&'
					;;
				*svg)
					E='inkscape&'
					;;
				*blend)
					E='blender& blender-2.60&'
					;;
				*)
					E=$E${E:+ }'nedit& gedit& gvim& mvim& xvim&'
					;;
			esac
			;;
	esac

	BIN="$E vim vi emacs nano" run "$@"
}
