<#
Version: 1.0
Author: 
- Jannik Reinhard (jannikreinhard.com)
Script: Check-IfDeviceIsEncrypted
Description: Check if Device is encrypted
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Version 1.0: Init
#> 

# Check if the device is encrypted
$encryptionStatus = Get-BitLockerVolume -MountPoint "C:" | Select-Object -ExpandProperty VolumeStatus
$encrypted = $true
If ($encryptionStatus -ne "FullyEncrypted") {
    $encrypted = $false
}

$output = @{ Ecrypted = $encrypted}
return $output | ConvertTo-Json -Compress