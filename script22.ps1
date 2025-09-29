###############################################
#######Sincronizacion de Repositorio con Github
###############################################
#############################################
################ Tabla de Multiplicar#######
param (
    $numero,
    $final
)

for ($i = 1; $i -lt $final; $i++) {
    $r = $numero * $i
    Write-Host $r
}
