# those backslashes ARE escaping
# shellcheck disable=SC1117
readonly COLOR_BLACK="\[\033[0;30m\]"
readonly COLOR_RED="\[\033[0;31m\]"
readonly COLOR_GREEN="\[\033[0;32m\]"
readonly COLOR_BROWN="\[\033[0;33m\]"
readonly COLOR_BLUE="\[\033[0;34m\]"
readonly COLOR_PURPLE="\[\033[0;35m\]"
readonly COLOR_CYAN="\[\033[0;36m\]"
readonly COLOR_LIGHT_GRAY="\[\033[0;37m\]"
readonly COLOR_DARK_GRAY="\[\033[1;30m\]"
readonly COLOR_LIGHT_RED="\[\033[1;31m\]"
readonly COLOR_LIGHT_GREEN="\[\033[1;32m\]"
readonly COLOR_LIGHT_YELLOW="\[\033[1;33m\]"
readonly COLOR_LIGHT_BLUE="\[\033[1;34m\]"
readonly COLOR_LIGHT_PURPLE="\[\033[1;35m\]"
readonly COLOR_WHITE="\[\033[1;37m\]"
readonly COLOR_NONE="\[\e[0m\]"

# Build smart prompt
smart_prompt() {
	# needs to be checked indirectly, of course
	# shellcheck disable=SC2181
	if (( $? ))
	then
		PS1=$COLOR_RED
	else
		PS1=$COLOR_NONE
	fi

	if type jobs &>/dev/null && (( $(jobs -p | wc -l) > 0 ))
	then
		PS1=${PS1}$PROMPT_PS1_JOBS
	else
		PS1=${PS1}$PROMPT_PS1
	fi

	PS1=${PS1}${COLOR_NONE}' '
}

PROMPT_PS1='.'
PROMPT_PS1_JOBS=':'

[[ $PROMPT_COMMAND == *smart_prompt* ]] ||
	PROMPT_COMMAND='smart_prompt'${PROMPT_COMMAND:+;}$PROMPT_COMMAND
