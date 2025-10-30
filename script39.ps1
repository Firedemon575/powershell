$archivo = "C:\Users\Pablo Porras\Desktop\SRI\Script\datos.csv"
$lineas = Get-Content $archivo

Write-Host "<html><body><table border='1'>"

for ($i = 0; $i -lt $lineas.Length; $i++) {
    $campos = $lineas[$i].Split(";")
    Write-Host "<tr>"
    for ($j = 0; $j -lt $campos.Length; $j++) {
        Write-Host "<td>$($campos[$j])</td>"
    }
    Write-Host "</tr>"
}

Write-Host "</table></body></html>"

