MODEL=$(printf 'al_%.2x%x' $(lscpu | grep "CPU family:" | awk -F: '{print $2}') $(lscpu | grep "Model:" | awk -F: '{print $2}'))
LIST_LOCATION=~/msr-safe/allowlists/
FILENAME=$LIST_LOCATION$MODEL
echo file should be $FILENAME


DEST=/dev/cpu/msr_allowlist

if test -f "$FILE"; then
	echo cat $LIST_LOCATION$FILENAME 
	cat $LIST_LOCATION$FILENAME > $DEST
elif test -f ./allowedlist.tmp; then
	echo cat ./allowedlist.tmp
	cat ./allowedlist.tmp > $DEST
else
	echo cat "$LIST_LOCATION"al_062d 
	cat "$LIST_LOCATION"al_062d > $DEST
fi

