# ps-hash-compare.ps1

Write-Host "==================================================================="
Write-Host "==================================================================="
Write-Host "==================================================================="
Write-Host "====================| H A S H - C O M P A R E |===================="
Write-Host "==================================================================="
Write-Host "==================================================================="
Write-Host "==================================================================="
Write-Host "`n`n"
Write-Host "                         by sorefingers"
Write-Host "`n"
Write-Host "v0.1"
Write-Host "Default algorithm used is SHA256"
Write-Host "`n"


$i = 1

while($i -eq 1){
    Write-Host "`n"
    $filePath = Read-Host "Please drag the file onto this window or type/paste the file path"
    $hashToCheck = Get-FileHash -Path $filePath | Select-Object -ExpandProperty Hash  # > hash1.txt
    $officialHash = Read-Host "`nPlease paste the official hash here: "
    Write-Host "`n`n"

    Write-Host "File hash:       ", $hashToCheck
    Write-Host "Official hash:   ", $officialHash,"`n`n"

    if($hashToCheck -eq $officialHash){
        Write-Host "The hashes are identical.`n`n"
    }else{
        Write-Host "The hashes are not identical.`n`n"
    }

    $repeat = Read-Host "Would you like to compare another two hashes? [N/y]`n"

    if($repeat -ne "y"){
        Write-Host "==================================================================="
        Write-Host "======================= Thank you for using ======================="
        Write-Host "==================================================================="
        Write-Host "====================| H A S H - C O M P A R E |===================="
        Write-Host "==================================================================="
        Write-Host "==================================================================="
        Write-Host "`nThis window will close in three seconds..."
        Start-Sleep -s 3
        $i = 0
    }
    else{continue}
}
# comment