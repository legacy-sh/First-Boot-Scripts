# Still in the testing phase

$usefulapps = '.*Photos.*|.*zuneVideo.*|.*Calculator.*|.*Net.Native.*|.*Edge.*'

$junkapps = Get-AppxPackage * | Where-Object{$_.NonRemovable -notmatch 'True' -and $_.Name -notmatch $usefulapps -and $_.Dependencies -clike 'Microsoft*'}

$junkapps | FT Name,NonRemovable

if ($junkapps)
{

$junkapps | Remove-AppxPackage 

}
