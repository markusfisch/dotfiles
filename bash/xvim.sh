# XVim, what's GVim again? :)
#
# @param ... - files to open
{
	type xterm &&
		type vim &&
		vim --version | grep '+clientserver' &&
		xvim()
	{
		# using $@ directly doesn't work for more than one file
		local F=$@

		if [[ `vim --serverlist` == *XVIM* ]]
		then
			vim --servername xvim --remote ${F[*]} &>/dev/null
		else
			xterm -class xvim -e "vim --servername xvim ${F[*]}" &>/dev/null &
		fi
	}
} &>/dev/null
