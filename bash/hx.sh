# View file hexadecimal
#
# @param ... - files to view
type hexdump &>/dev/null && hx()
{
	hexdump -C "$@" | less
}
