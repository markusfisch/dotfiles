# Open/view/play media file
#
# @param ... - name and path of file(s) to view/play
o()
{
	[ -d "$1" ] && {
		ls $1
		return
	}

	local V=

	case "$1" in
		*gif|*png|*jpg|*jpeg|*tif|*tiff)
			V='feh&'
			;;
		*pdf)
			V='qpdfview&'
			;;
		*mpg|*mpeg|*mov|*wmv|*ogg|*mp3|*mp4|*wav)
			V='mplayer mpg123'
			;;
		*html|*htm|http://*|https://*|ftp://|*mht)
			V='opera& firefox&'
			;;
		*kml)
			V='googleearth&'
			;;
		*)
			V='less more view'
			;;
	esac

	BIN="$V open& xdg-open&" run "$@"
}
