# Shortcuts for built-in's
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias l='ls'
alias ll='ls -l'
alias la='ls -la'
alias lth='ls -t | head'
alias h='history'
alias hc='history -c'
alias j='jobs'

# Grep
alias grl='grep -rl'
alias fgrl='fgrep -rl'

# Editing
alias e='edit'

# Media playback/viewing
type feh &>/dev/null &&
	alias feh='feh --magick-timeout -1'
type mplayer &>/dev/null &&
	alias fs='mplayer -fs -af volume=-30'

# Recording
type ffmpeg &>/dev/null &&
	alias rec='ffmpeg -f x11grab -r 20 -s wxga -i :0.0 -sameq -f mp4 -y'
type cdrecord &>/dev/null &&
	alias burn='cdrecord dev=/dev/cdrom'

# Net
type ftp &>/dev/null &&
	alias ftp='ftp -pi'
type ssh &>/dev/null &&
	alias ssh='TERM=xterm ssh'
type whois &>/dev/null &&
	alias whois='whois -h whois-servers.net'
type python &>/dev/null &&
	alias htd='python -m SimpleHTTPServer'

# Map BSD/OSX to GNU names
alias md5sum='md5'
alias sha1sum='shasum'
type otool &>/dev/null &&
	alias ldd='otool -L'

# Text conversion
type iconv &>/dev/null && {
	alias utf2iso='iconv -f utf8 -t iso_8859-15'
	alias iso2utf='iconv -f iso_8859-15 -t utf8'
}
alias rot13='tr a-zA-Z n-za-mN-ZA-M'
alias sag='LNG=de say'

# Android
type adb &>/dev/null && {
	alias ad='adb devices'
	alias a='and'
	alias ab='a build'
	alias ac='a clean'
}

# Make
alias m='makep'
alias mc='m clean'
alias ml='m lint'
alias mf='m findbugs'
alias mlf='m lint findbugs'
alias mclf='m clean lint findbugs'
alias mi='m install'
alias mu='m uninstall'
alias ms='m start'
alias mis='m install start'
alias mui='m uninstall install'
alias muis='m uninstall install start'

# Prettify JSON
type python &>/dev/null &&
	alias jsonprettify='python -m json.tool'
