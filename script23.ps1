###############################################
#######Sincronizacion de Repositorio con Github
###############################################
#############################################
################ Buscar un Proceso#######
param (
    $proceso
)
$f = 0
$p = Get-Process
$l = $p.Length

for ($i = 0; $i -lt $l; $i++) {
    if ($p[$i].id -eq $proceso) {
        Write-Host "proceso encontrado"
        $f = 0
        break
    }
    else {
        $f = 1
    }
}

if ($f -eq 1) {
    Write-Host "Proceso $proceso no encontrado"
}
