# create target directory if it doesn't exist
mv() {
	(($# > 0)) && {
		local TARGET=${!#}
		[ -r "$TARGET" ] || {
			[[ "$TARGET" == */* ]] && {
				local DIR=${TARGET%/*}
				[ -d "$DIR" ] || mkdir -p "$DIR" || return $?
			}
		}
	}
	/bin/mv "$@"
}
