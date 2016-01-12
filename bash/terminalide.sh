# Create aliases for scripts to be run with bash because
# /usr/bin/env isn't available within TerminalIDE
[[ $SHELL == *spartacuside* ]] && {
	terminal_ide_aliases()
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

	terminal_ide_aliases
	unset terminal_ide_aliases
}
