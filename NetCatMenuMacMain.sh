clear
echo "Would you like to be a [server] or a [client]?"
read -e serverclient
if [ "$serverclient" == "server" ] ; then
	echo "Use the following IP to connect to this server:"
	ipconfig getifaddr en1
	echo "Creating server..."
    nc -l 4444
    echo "Connection lost..."
fi
if [ "$serverclient" == "client" ] ; then
	echo "What's the server's IP?"
	read -e serverip
	echo "Connecting to server..."
	nc $serverip 4444
	echo "Connection lost..."
fi