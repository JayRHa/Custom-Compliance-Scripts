<#
Version: 1.0
Author: 
- Jannik Reinhard (jannikreinhard.com)
Script: Check-IfUnathorizedLocalAdmins
Description: Check if unauthroized local admins on the system
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Version 1.0: Init
#> 

$admins = Get-LocalGroupMember -Group "Administrators" | Where-Object {$_.ObjectClass -eq "user"}
$localAdmin = $false
If ($admins.Count -gt 1) {
    $localAdmin = $true
}

$output = @{ LocalAdmin = $localAdmin}
return $output | ConvertTo-Json -Compress