clear
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
	echo "Deleting installer..."
	cd ~/Downloads/NetCatMenuMac-master
	rm NetCatMenuMacWizard.sh
	echo "Deleting README..."
	rm README.md
	cd ~
	echo "Deleting uninstaller..."
	rm ~/Applications/NetCatMenuMac/NetCatMenuMacUninstaller.sh
	echo "Deleting download folder..."
	rmdir ~/Downloads/NetCatMenuMac-master
	echo "Deleting file folder..."
	rmdir ~/Applications/NetCatMenuMac
fi