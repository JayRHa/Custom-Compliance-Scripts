<#
Version: 1.0
Author: 
- Jannik Reinhard (jannikreinhard.com)
Script: Check-FirewallEnabled
Description: Check if Firewall is enabled
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Version 1.0: Init
#> 

$firewallStatus = Get-NetFirewallProfile | Where-Object { $_.Enabled -eq 'True' }
$firewall = $false
if ($firewallStatus) {
    # Return True if the firewall is enabled
    $firewall =  $true
}
$output = @{ Firewall = $firewall}
return $output | ConvertTo-Json -Compress