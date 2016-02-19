# Create aliases for scripts to be run with bash when
# /usr/bin/env isn't available (for Termux or TerminalIDE)
[[ -x /usr/bin/env ]] || {
	alias_scripts()
	{
		local SCRIPT NAME

		[ -d "$DOTFILES" ] || return 1

		for SCRIPT in $DOTFILES/bin/*
		do
			NAME=${SCRIPT##*/}
			# NAME should expand on definition and there
			# are no quotes to escape
			# shellcheck disable=SC2139
			# shellcheck disable=SC2140
			alias "$NAME"="bash $DOTFILES/bin/$NAME"
		done
	}

	alias_scripts
	unset alias_scripts
}
