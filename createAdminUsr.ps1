$UsrName = "localAdmn"
$Pass = "************"
$fName = "localAdmin"
$AccDesc = "Account created by Powershell"

$group = "Administrators"

$adsi = [ADSI]"WinNT://$env:COMPUTERNAME"
$existing = $adsi.Children | where {$_.SchemaClassName -eq 'user' -and $_.Name -eq $UsrName }

if ($existing -eq $null) {

    Write-Host "Creating new local user $UsrName."
    & NET USER $UsrName $Pass /add /y /expires:never
    
    Write-Host "Adding local user $UsrName to $group."
    & NET LOCALGROUP $group $UsrName /add

}
else {
    Write-Host "Setting Pass for existing local user $UsrName."
    $existing.SetPass($Pass)
}

Write-Host "Ensuring Pass for $UsrName never expires."
& WMIC USERACCOUNT WHERE "Name='$UsrName'" SET PassExpires=FALSE