# Shortcuts for built-in's
alias ..='cd ..'
alias l='ls'
alias ll='ls -l'
alias la='ls -la'
alias lf='printf "%s\n"'
alias h='history'
alias hc='history -c'
alias j='jobs'

# Editing
alias e='edit'

# Media playback/viewing
alias feh='feh --magick-timeout -1'
alias fs='mplayer -fs -af volume=-30'

# Recording
alias rec='ffmpeg -f x11grab -r 20 -s wxga -i :0.0 -sameq -f mp4 -y'
alias burn='cdrecord dev=/dev/cdrom'

# Net
alias ftp='ftp -pi'
alias ssh='TERM=xterm ssh'
alias whois='whois -h whois-servers.net'
alias htd='python -m SimpleHTTPServer'

# Map BSD/OSX to GNU names
alias md5sum='md5'
alias sha1sum='shasum'
alias ldd='otool -L'

# Text conversion
alias utf2iso='iconv -f utf8 -t iso_8859-15'
alias iso2utf='iconv -f iso_8859-15 -t utf8'
alias rot13='tr a-zA-Z n-za-mN-ZA-M'
alias sag='LNG=de say'

# Android
alias ad='adb devices'
alias a='and'
alias ab='a build'
alias ac='a clean'

# Memo
alias m='memo'
