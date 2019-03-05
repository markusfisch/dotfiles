# shortcuts for built-in's
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias l='ls'
alias ll='ls -l'
alias la='ls -la'
alias lt='ls -t'
alias lth='ls -t | head'
alias h='history'
alias hc='history -c'
alias k='fc -s'
alias j='jobs'

# editing
alias e='edit'

# updating
alias up='update && upgrade'

# grep
type grep &>/dev/null && {
	alias grl='grep -rl'
	alias fgrl='fgrep -rl'
}

# diff
type diff &>/dev/null && {
	alias dify='diff --suppress-common-lines -wry'
}

# media playback/viewing
type feh &>/dev/null && {
	alias feh='feh --magick-timeout -1'
}
type mplayer &>/dev/null && {
	alias fs='mplayer -fs -af volume=-30'
}

# recording
type ffmpeg &>/dev/null && {
	alias rec='ffmpeg -f x11grab -r 20 -s wxga -i :0.0 -sameq -f mp4 -y'
}
type cdrecord &>/dev/null && {
	alias burn='cdrecord dev=/dev/cdrom'
}

# net
type ftp &>/dev/null && {
	alias ftp='ftp -pi'
}
type ssh &>/dev/null && {
	alias ssh='TERM=xterm ssh'
}
type whois &>/dev/null && {
	alias whois='whois -h whois-servers.net'
}

# map BSD/OSX to GNU names
alias md5sum='md5'
alias sha1sum='shasum'
type otool &>/dev/null && {
	alias ldd='otool -L'
}

# text conversion
type iconv &>/dev/null && {
	alias utf2iso='iconv -f utf8 -t iso_8859-15'
	alias iso2utf='iconv -f iso_8859-15 -t utf8'
}
type tr  &>/dev/null && {
	alias rot13='tr a-zA-Z n-za-mN-ZA-M'
}

# tree with less
type less &>/dev/null && {
	tl() {
		tree "$@" | less -S
	}
}
