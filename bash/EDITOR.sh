for EDITOR in nedit gedit gvim mvim xvim vim nano $EDITOR
do
	type $EDITOR &>/dev/null && break
done
