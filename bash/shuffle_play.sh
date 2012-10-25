# Shuffle play playlist file
#
# @param 1 - playlist file (optional)
{
	setup_shuffle_play()
	{
		local P

		for P in "$SHUFFLER" \
			'mplayer -shuffle -playlist' \
			'mpg123 -z -@'
		do
			type "${P%% *}" &>/dev/null || continue

			export SHUFFLER=$P
			p()
			{
				local LIST=${1:-playlist}

				[ -r "$LIST" ] ||
					find . -type f | grep -iE '\.(mp3|ogg)$' > "$LIST"

				$SHUFFLER $LIST
			}
			break
		done
	}

	setup_shuffle_play
	unset setup_shuffle_play
}
