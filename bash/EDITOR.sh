for EDITOR in $EDITOR nedit gedit gvim mvim xvim vim nano
do
	type $EDITOR &>/dev/null && break
done
