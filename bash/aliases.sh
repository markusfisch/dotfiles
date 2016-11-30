# Shortcuts for built-in's
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias l='ls'
alias ll='ls -l'
alias la='ls -la'
alias lt='ls -t'
alias lth='ls -t | less'
alias h='history'
alias hc='history -c'
alias j='jobs'

# Editing
alias e='edit'

# grep
type grep &>/dev/null && {
	alias grl='grep -rl'
	alias fgrl='fgrep -rl'
}

# diff
type diff &>/dev/null && {
	alias dify='diff --suppress-common-lines -wry'
}

# Media playback/viewing
type feh &>/dev/null && {
	alias feh='feh --magick-timeout -1'
}
type mplayer &>/dev/null && {
	alias fs='mplayer -fs -af volume=-30'
}

# Recording
type ffmpeg &>/dev/null && {
	alias rec='ffmpeg -f x11grab -r 20 -s wxga -i :0.0 -sameq -f mp4 -y'
}
type cdrecord &>/dev/null && {
	alias burn='cdrecord dev=/dev/cdrom'
}

# Net
type ftp &>/dev/null && {
	alias ftp='ftp -pi'
}
type ssh &>/dev/null && {
	alias ssh='TERM=xterm ssh'
}
type whois &>/dev/null && {
	alias whois='whois -h whois-servers.net'
}

# Map BSD/OSX to GNU names
alias md5sum='md5'
alias sha1sum='shasum'
type otool &>/dev/null && {
	alias ldd='otool -L'
}

# Text conversion
type iconv &>/dev/null && {
	alias utf2iso='iconv -f utf8 -t iso_8859-15'
	alias iso2utf='iconv -f iso_8859-15 -t utf8'
}
type tr  &>/dev/null && {
	alias rot13='tr a-zA-Z n-za-mN-ZA-M'
}
