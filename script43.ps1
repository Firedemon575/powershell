$a = Get-Content -Path datos.txt 
$users = Get-LocalUser
$lu = $users.Length
$l = $a.Length

for ($i = 0; $i -lt $l; $i++) {
    $partes = $a[$i].Split("-")
    $u = $partes[0]
    $c = $partes[1]
    $pw = ConvertTo-SecureString $c -AsPlainText -Force
    $f = 0

    for ($j = 0; $j -lt $lu; $j++) {
        if ($u -eq $users[$j].Name) {
            $f = 1
        }
    }

    if ($f -eq 0) {
        New-LocalUser -Name $u -Password $pw
    }
    else{ Write-Host "El usuario $u ya existe" -ForegroundColor green}
   
}
Write-Host "`nUsuarios locales actuales:" -ForegroundColor Cyan
foreach ($usr in $users) {
    Write-Host $usr.Name
}
