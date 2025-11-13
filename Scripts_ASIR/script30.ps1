###############################################
###############################################
###############################################
#############################################
################ Funciones #######
function busca {
    param (
        [String]$nombre
    )

    $contador = 0
    $p = get-process
    $l = $p.length

    for ($i = 0; $i -lt $l; $i++) {
        $n = $p[$i].ProcessName
        if ($n -eq $nombre) {
            $contador++
        }
    }

    return $contador
}

$nombre = Read-Host -Prompt "Nombre del proceso"
$contador = busca -nombre $nombre
Write-Host "hay $contador instancias de $nombre"
