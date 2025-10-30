
$p = Get-Localuser
$rutafichero = "C:\xampp\htdocs\power\index2.html"
$l = $p.length
$cadena = "<html><head><style>
body { font-family: Arial; background-color: green; }
table { border-collapse: collapse; width: 60%; margin-top: 50px; }
</style></head><body><center><table>
<tr><th>Nombre</th><th>Descripción</th></tr>"

for ($i = 0; $i -lt $l; $i++) {
    $cadena = $cadena + "<tr><td>" + $p[$i].Name + "</td><td>" + $p[$i].Description + "</td></tr>"
}
$cadena = $cadena + "</table></center></body></html>"
Write-Host $cadena
Set-Content -Path $rutafichero -Value $cadena

