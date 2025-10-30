###############################################
###############################################
###############################################
##############################################
################ Prioridad ##############

###############################################
###############################################
###############################################
##############################################
############### Prioridad por nombre ##########

# Pedimos el nombre del proceso al usuario
$nombre = Read-Host "Introduce el nombre del proceso (ej: chrome)"
$p = Get-Process -Name $nombre 

# Verificamos si existe
if ($p) {
    $l = $p.Length
    Write-Host "Se encontraron" $l "procesos con el nombre:" $nombre
    for ($i = 0; $i -lt $l; $i++) {
        $procId = $p[$i].Id
        $prioridad = $p[$i].BasePriority
        Write-Host "ID:" $procId " Prioridad:" $prioridad
    }
} else {
    Write-Host "No se encontró ningún proceso con el nombre:" $nombre
}
