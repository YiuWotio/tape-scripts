mt -f /dev/nst0 tell

while $(mt -f /dev/nst0 fsf 1); do
	mt -f /dev/nst0 tell
done

mt -f /dev/nst0 tell
