<#
Version: 1.0
Author: 
- Jannik Reinhard (jannikreinhard.com)
Script: Check-IfAppIsInstalled
Description: Check if an specific app is installed. You have to add the app name to the script.
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Version 1.0: Init
#> 

$appName = 'edge'

$app = $false
if(Get-AppxPackage -Name "*$appName*"){
    $app = $true
}
$output = @{AppName = $app}
return $output | ConvertTo-Json -Compress