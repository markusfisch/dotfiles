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
	WILDCARD=`grep "\*$PROP:" theme.cfg.bak`
	DEFAULT=`grep -E "^${PROP}:" theme.cfg.bak`

	if [ "$DEFAULT" ]
	then
		VALUE=${DEFAULT##*:}
	elif [ "$WILDCARD" ]
	then
		VALUE=${WILDCARD##*:}
	fi

	echo "${KEY}: ${VALUE}"
done < /usr/share/fluxbox/styles/Artwiz
