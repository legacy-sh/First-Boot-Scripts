# Still in the testing phase

$nonrm_apps = Get-AppxPackage * | Where-Object $_.NonRemovable -Eq 'True'} 
$usefulapps = '.*Photos.*|.*zuneVideo.*|.*Calculator*.|.*Store.*'

$junkapps = Get-AppxPackage * | Where-Object{$_.Name -notmatch $usefulapps -and $_.Name -notmatch $nonrm_apps}

if ($junkapps)
{

$junkapps | Remove-AppxPackage >> ~/output.txt

}