echo "Would you like to uninstall NetCatMenuMac? [y][n]"
read -e uninstall
if [ "$uninstall" == "y" ] ; then
	echo "Deleting desktop shortcut..."
	cd ~/Desktop
	rm NetCatMenuMacDesktop.sh
	cd ~/Applications/NetCatMenuMac
	echo "Deleting launcher file..."
	rm NetCatMenuMacLauncher.sh
	echo "Deleting program file..."
	rm NetCatMenuMacMain.sh
	cd ..
	echo "Deleting file folder..."
	rmdir NetCatMenuMac
fi