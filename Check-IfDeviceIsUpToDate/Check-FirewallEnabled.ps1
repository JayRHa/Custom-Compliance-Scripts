<#
Version: 1.0
Author: 
- Jannik Reinhard (jannikreinhard.com)
Script: Check-IfDeviceIsUpToDate
Description: Check if Device is up to date
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Version 1.0: Init
#> 

# Check if Windows updates are up-to-date
$windowsUpdateStatus = (Get-WmiObject -Class Win32_OperatingSystem).Win32_OperatingSystem.UpdateAvailable
$updates = $false
If ($windowsUpdateStatus -eq $true) {
    $updates = $true
}

$output = @{ UpToDate = $updates}
return $output | ConvertTo-Json -Compress