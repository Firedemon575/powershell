###############################################
###############################################
###############################################
#############################################
################ Lectura de Fichero#######

$p = Get-Process
$rutaFichero="procesos.xml"
$l = $p.Length
$cadena = "<procesos>"  

for ($i = 0; $i -lt $l; $i++) {
    $cadena = $cadena + "<procesos><name>" + $p[$i].ProcessName + "</name><id>" + $p[$i].Id + "</id></procesos>"
 
}
$cadena=$cadena + "</procesos>" 
Set-Content -Path $rutaFichero -Value $cadena