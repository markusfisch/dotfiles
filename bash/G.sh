# Print files sorted by size, the greatest file's last
#
# @param ... - paths (optional)
G()
{
	find "$@" -type f -exec du -hk {} \; | sort -n
}
