echo "Would you like to install NetCatMenuMac? [y][n]"
read -e download
if [ "$download" == "y" ] ; then
	cd ~
	echo "Making file folder..."
	mkdir NetCatMenuMac
	cd ~/Downloads/NetCatMenuMac
	echo "Installing program file..."
	mv NetCatMenuMacMain.sh ~/NetCatMenuMac
	echo "Installing launcher file..."
	mv NetCatMenuMacLauncher.sh ~/NetCatMenuMac
	echo "Would you like to add a desktop icon? [y][n]"
	read -e desktopIcon
	if [ "$desktopIcon" == "y" ] ; then
		cd ~/Downloads/NetCatMenuMac
		mv NetCatMenuMacDesktop.sh ~/Desktop
	fi
	echo ""
	echo "All files are installed. Would you like to run the program? [y][n]"
	read -e run
	if [ "$run" == "y" ] ; then
		cd ~/NetCatMenuMac
		./NetCatMenuMacLauncher.sh
	fi
fi