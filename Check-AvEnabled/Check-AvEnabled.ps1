<#
Version: 1.0
Author: 
- Jannik Reinhard (jannikreinhard.com)
Script: Check-AvEnabled
Description: Check if av is enabled
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Version 1.0: Init
#> 

$avActive = $false
if(Get-CimInstance -Namespace root/SecurityCenter2 -ClassName AntiVirusProduct){
    $avActive = $true
}

$output = @{ AvActive = $avActive}
return $output | ConvertTo-Json -Compress