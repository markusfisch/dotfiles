# View thumbnails
#
# @param ... - name and path of file(s) to view
{
	setup_thumbnail()
	{
		local V
		for V in "$THUMBNAIL_VIEWER" \
			'feh -Ftr --magick-timeout -1'
		do
			type ${V%% *} &>/dev/null || continue

			export THUMBNAIL_VIEWER=$V
			t()
			{
				$THUMBNAIL_VIEWER "$@" &>/dev/null &
			}

			return
		done

		t()
		{
			BIN='open xdg-open' try "`find "${@:-.}" -type f | \
				grep -iE '\.(png|jpg|jpeg|gif|tif)$'`"
		}
	}

	setup_thumbnail
	unset setup_thumbnail
}
