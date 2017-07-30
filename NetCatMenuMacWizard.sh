echo "Property of Moonshot Studios"
echo "Would you like to install NetCatMenuMac? [y][n]"
read -e download
if [ "$download" == "y" ] ; then
	cd ~/Applications
	echo "Making file folder..."
	mkdir NetCatMenuMac
	cd ~/Downloads/NetCatMenuMac-master
	echo "Installing program file..."
	mv NetCatMenuMacMain.sh ~/Applications/NetCatMenuMac
	echo "Installing launcher file..."
	mv NetCatMenuMacLauncher.sh ~/Applications/NetCatMenuMac
	echo "Installing uninstaller..."
	mv NetCatMenuMacUninstaller.sh ~/Applications/NetCatMenuMac
	echo "Would you like to add a desktop icon? [y][n]"
	read -e desktopIcon
	if [ "$desktopIcon" == "y" ] ; then
		cd ~/Downloads/NetCatMenuMac-master
		mv NetCatMenuMacDesktop.sh ~/Desktop
	fi
	echo ""
	echo "All files are installed. Would you like to run the program? [y][n]"
	read -e run
	if [ "$run" == "y" ] ; then
		cd ~/Applications/NetCatMenuMac
		./NetCatMenuMacMain.sh
	fi
fi