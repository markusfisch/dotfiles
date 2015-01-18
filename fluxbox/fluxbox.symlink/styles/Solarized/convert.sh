#!/usr/bin/env bash

while read
do
	case "$REPLY" in
		'')
			continue
			;;
		!*)
			continue
			;;
		\**)
			continue
			;;
	esac

	KEY=${REPLY%%:*}
	VALUE=${REPLY##*:}

	PROP=${KEY##*.}

	case "$PROP" in
		color*)
			DEFAULT=`grep -E "^${KEY}:" /usr/share/fluxbox/styles/Artwiz`
			VALUE=${DEFAULT##*:}
			;;
	esac

	echo "${KEY}: ${VALUE}"
done < theme.cfg.new
