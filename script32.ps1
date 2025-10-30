###############################################
###############################################
###############################################
##############################################
################ Calculo Maximo ##############

$p = Get-Process
$l = $p.Length
echo $l
$max = $p[0].CPU
$CPU = $p[0].CPU  
$procId = $p[0].Id  

for ($i = 0; $i -lt $l; $i++) {
    $id = $p[$i].CPU
    if ($id -gt $max) { 
        $max = $id      
        $CPU = $id     
        $procId = $p[$i].Id
    }
}

Write-Host "El ID con mayor CPU es" $procId
Write-Host "CPU consumida:" $CPU
