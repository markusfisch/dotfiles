readonly NETWORK_CACHE='hhsw.de@ssh.strato.de:cache'
readonly NETWORK_CACHE_OPTIONS='
	--exclude="*.swp"
	--recursive
	--update
	--delete-after
	--times
	--compress'

# Push a file/directory to network cache
#
# @param ... - files/directories to push
push()
{
	local FILE
	for FILE in "$@"
	do
		rsync \
			$NETWORK_CACHE_OPTIONS \
			"${FILE%/}" \
			"${NETWORK_CACHE%/}/"
	done
}

# Pull a file/directory from network cache
#
# @param ... - files/directories to pull
pull()
{
	local FILE
	for FILE in "$@"
	do
		rsync \
			$NETWORK_CACHE_OPTIONS \
			"${NETWORK_CACHE%/}/${FILE%/}" \
			.
	done
}

# List cache
cache()
{
	ssh ${NETWORK_CACHE%:*} "ls ${NETWORK_CACHE#*:}"
}
