readonly NETWORK_CACHE='hhsw.de@ssh.strato.de:cache'
readonly NETWORK_CACHE_OPTIONS='
	--exclude="*.swp"
	--recursive
	--update
	--delete-after
	--times
	--compress'

# Put a file/directory
#
# @param ... - files/directories
nput()
{
	local FILE
	for FILE
	do
		rsync \
			$NETWORK_CACHE_OPTIONS \
			"${FILE%/}" \
			"${NETWORK_CACHE%/}/"
	done
}

# Get a file/directory
#
# @param ... - files/directories
nget()
{
	local FILE
	for FILE
	do
		rsync \
			$NETWORK_CACHE_OPTIONS \
			"${NETWORK_CACHE%/}/${FILE%/}" \
			.
	done
}

# List
nls()
{
	ssh ${NETWORK_CACHE%:*} "ls ${NETWORK_CACHE#*:}"
}

# Remove a file/directory
#
# @param ... - files/directories
nrm()
{
	local FILE
	for FILE
	do
		ssh ${NETWORK_CACHE%:*} "rm -rf ${NETWORK_CACHE#*:}/${FILE%/}"
	done
}
