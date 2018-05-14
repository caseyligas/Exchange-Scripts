ForEach ($group in (Get-DistributionGroup -Filter {name -like "*"})) 
   {  
	$path = "C:\AllGroups\" + $group + ".csv"
	Get-DistributionGroupMember $group | Select-Object firstname, lastname, primarysmtpaddress | Export-CSV -Path  $path
   }