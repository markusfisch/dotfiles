readonly COLOR_RED="\[\033[0;31m\]"
readonly COLOR_GREEN="\[\033[0;32m\]"
readonly COLOR_YELLOW="\[\033[0;33m\]"
readonly COLOR_BLUE="\[\033[0;34m\]"
readonly COLOR_WHITE="\[\033[1;37m\]"
readonly COLOR_LIGHT_RED="\[\033[1;31m\]"
readonly COLOR_LIGHT_GREEN="\[\033[1;32m\]"
readonly COLOR_LIGHT_GRAY="\[\033[0;37m\]"
readonly COLOR_NONE="\[\e[0m\]"

# Build smart prompt
smart_prompt()
{
	if (( $? ))
	then
		PS1=$COLOR_RED
	else
		PS1=$COLOR_NONE
	fi

	if type jobs &>/dev/null && (( `jobs -p | wc -l` > 0 ))
	then
		PS1=${PS1}$PROMPT_PS1_JOBS
	else
		PS1=${PS1}$PROMPT_PS1
	fi

	PS1=${PS1}${COLOR_NONE}' '
}

case $TERM_PROGRAM in
	Apple_Terminal)
		PROMPT_PS1='›'
		PROMPT_PS1_JOBS='»'
		;;
	*)
		PROMPT_PS1='.'
		PROMPT_PS1_JOBS=':'
		;;
esac

[[ $PROMPT_COMMAND == *smart_prompt* ]] ||
	PROMPT_COMMAND='smart_prompt'${PROMPT_COMMAND:+;}$PROMPT_COMMAND
