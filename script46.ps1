$ruta = "C:\Users\Pablo Porras\Desktop\SRI\Script\usuarios.txt"
$lineas = Get-Content $ruta
$nombre = Read-Host "Introduce nombre de usuario"
$encontrado = $false

for ($i = 0; $i -lt $lineas.Count; $i++) {
    $partes = $lineas[$i].Split(":")
    $usuario = $partes[0]

    if ($usuario -eq $nombre) {
        $home = $partes[5]
        Write-Host "El usuario '$usuario' está registrado. Carpeta: $home"
        $encontrado = $true
        break
    }
}

if ($encontrado -eq $false) {
    Write-Host "El usuario '$nombre' no está registrado."
}

