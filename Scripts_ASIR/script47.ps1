## 4.-Escribe un script en powershell que muestre los usuarios que están deshabilitados.##


$a = Get-LocalUser
$l = $a.Length

for ($i = 0; $i -lt $l; $i++) {
    if ($a[$i].Enabled -eq $false) {
        Write-Host $a[$i].Name
    }
}

