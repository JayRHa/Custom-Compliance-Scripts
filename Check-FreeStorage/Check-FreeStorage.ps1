<#
Version: 1.0
Author: 
- Jannik Reinhard (jannikreinhard.com)
Script: Check-FreeStorage
Description: Check if device has free storage
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Version 1.0: Init
#> 

$freeStorage = [math]::Round((Get-PSDrive -Name C).Free / 1024 / 1024 / 1024)
$output = @{FreeStorage = $freeStorage}
return $output | ConvertTo-Json -Compress