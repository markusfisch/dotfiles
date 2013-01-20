# Cd into given directory and list files, 2 strokes saved :)
cl()
{
	cd "$@" && ls
}

# Go down a level and list files, 2 strokes saved :)
.l()
{
	cd .. && ls
}
