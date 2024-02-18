#!/bin/bash

# Script Name: sysinfo_tool.sh
# Description: This script performs XYZ tasks.
# Author: Om Luitel
# Date Created: 2023-12-30
# Last Modified: 2023-12-30

# ----- Start of script -----

# Your script code goes here...


show_disk_info() {
	clear
	echo "Disk Information:"
	df -h
	menu
}

show_uptime() {
	clear
	echo "System Uptime:"
	uptime
	menu
}

show_systeminfo() {
	clear
       	echo "===== System Information ====="
    	echo "Date and Time: $(date)"
    	echo "Hostname: $(hostname)"
    	echo ""

    	echo "===== Uptime ====="
    	uptime
    	echo ""

    	echo "===== Users Currently Logged In ====="
    	who
    	echo ""

    	echo "===== Memory Usage ====="
    	free -h
    	echo ""

    	echo "===== CPU Info ====="
   	lscpu
    	echo ""

    	echo "===== Network Interfaces ====="
    	ip addr
}

menu() {
	echo "
	Linux SysAdmin ToolKit
	**********************
	1) Disk
	2) Uptime
	3) SystemInfo
	4) Exit
	"
	read -p "Selection...>" selection
	case $selection in
		1) show_disk_info ;;
		2) show_uptime ;;
		3) show_systeminfo ;;
		4) clear
			exit ;;
		*) echo "Incalid Selection"
			menu ;;
	esac
}

clear
menu
