# Determine preferred editor for given file
#
# @param 1 - file to edit (optional)
editor_for()
{
	CMD=
	case "$TERM" in
		*xterm*|*rxvt)
			case "$1" in
				*ods|*odt|*[Dd][Oo][Cc]|*[Xx][Ll][Ss]|*[Pp][Pp][Ss])
					CMD='libreoffice ooffice soffice'
					;;
				*png|*jpg|*jpeg|*gif|*xcf|*psd)
					CMD='gimp'
					;;
				*svg)
					CMD='inkscape'
					;;
				*blend)
					CMD='blender blender-2.60'
					;;
			esac
			;;
	esac

	for CMD in $CMD $EDITOR
	do
		type $CMD &>/dev/null && return
	done
}

# Determine preferred viewer for given file
#
# @param 1 - file to view (optional)
viewer_for()
{
	CMD=
	case "$TERM" in
		*xterm*|*rxvt)
			local OPEN='open xdg-open'
			case "$1" in
				*gif|*png|*jpg|*jpeg|*tif|*tiff)
					CMD="feh $OPEN"
					;;
				*pdf)
					CMD="qpdfview $OPEN"
					;;
				*mpg|*mpeg|*mov|*wmv|*ogg|*mp3|*mp4|*wav)
					CMD="mplayer mpg123 $OPEN"
					;;
				*html|*htm|http://*|https://*|ftp://|*mht|*svg)
					CMD="opera firefox $OPEN"
					;;
				*kml)
					CMD="googleearth $OPEN"
					;;
			esac
			;;
	esac

	for CMD in $CMD view less more
	do
		type $CMD &>/dev/null && return
	done
}

# Smart open files depending on given action
#
# @param 1 - action, 'editor' or 'viewer'
# @param ... - name and path of file(s) to edit/view (optional)
smart_open()
{
	local CMD
	${1:-editor_for} "$2"
	shift
	case $CMD in
		vi|vim|nano|emacs|view|less|more|mplayer|mpg123)
			$CMD "$@"
			;;
		*)
			$CMD "$@" &>/dev/null &
			;;
	esac
}

# shortcuts
alias e='smart_open editor_for'
alias v='smart_open viewer_for'

# Open all source files in current or given directory
#
# @param ... - source directories (optional)
ec()
{
	local D F FT=${FT:-'\.(c|cpp|m|h|java)$'}
	for D in "${@:-.}"
	do
		[ -d $D ] && D=`find "${D%/}" -type f | grep -E "$FT"`
		F=$F${F:+ }$D
	done
	e $F
}
