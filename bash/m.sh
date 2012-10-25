# Monitor process(es)
#
# @param ... - name(s) of processes (optional)
m()
{
	local PROCESS PID PIDS= IFS=' ' DELAY="-d ${DELAY:-.5}"

	for PROCESS in $@
	do
		while read PID
		do
			[ -z $PID ] && {
				echo "error: $PROCESS not running!"
				return
			}

			PIDS="$PIDS -p $PID"
		done <<< `pgrep $PROCESS`
	done

	for (( N=2; N--; ))
	do
		top $DELAY $PIDS 2>/dev/null && break
		DELAY='-i 1'
		PIDS=${PIDS//-p/-pid}
	done
}
