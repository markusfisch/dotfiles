# Print files sorted by time, the latest file's last
#
# @param ... - paths (optional)
if find --version &>/dev/null
then
L()
{
	find "$@" -type f -printf "%TY-%Tm-%Td %TH:%TM %h/%f\n" | sort
}
else
L()
{
	find "$@" -type f \
		-exec stat -t '%Y-%m-%d %H:%M:%S' -f '%Sm %N' {} \; | sort
}
fi
