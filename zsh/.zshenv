HERE=$HOME/.zshenv
SYSTEM_PATH="`dirname $(readlink -e -f $HERE)`/../system"

for DOTFILE in "$SYSTEM_PATH/".{function,env,path,alias}; do
	[ -f "$DOTFILE" ] && source "$DOTFILE"
done
unset DOTFILE

# Load non version controlled environment variables and scripts.
[ -f "$EXTRA_DIR/.env" ] && source $EXTRA_DIR/.env