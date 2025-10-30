$p = Get-Process
$max = $p[0].Handles
$procName = $p[0].ProcessName

for ($i = 0; $i -lt $p.Length; $i++) {
    $hilos = $p[$i].Handles
    if ($hilos -gt $max) { 
        $max = $hilos      
        $procName = $p[$i].ProcessName
    }
}

Write-Host "El proceso con más hilos es:" $procName





