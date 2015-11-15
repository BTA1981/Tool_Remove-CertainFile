﻿<#

Script: 	Remove certain file within directory structure
Date:		08-08-2014
Author:		Bart Tacken
Source:		http://blogs.technet.com/b/heyscriptingguy/archive/2006/10/23/how-can-i-use-windows-powershell-to-delete-all-the-tmp-files-on-a-drive.aspx

#>

#Variable
$UsersDir = 'd:\data\users'		#Variabele voor directory Users (met profielen en homedir data)

#Script
# -Force is used to get access to hidden files/folders
# Remove whatif to actually delete files
get-childitem $usersdir -include '{308DD9FD-2C31-4AF6-B879-D417CE7B5EBF}.upf' -recurse -Force | foreach ($_) {remove-item $_.fullname -whatif}
