for EDITOR in $EDITOR vim vi nano
do
	type $EDITOR &>/dev/null && break
done
export EDITOR=$EDITOR
