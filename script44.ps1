
$ruta = "C:\Users\Pablo Porras\Desktop\SRI\Script\usuarios.txt"
$lineas = Get-Content $ruta

foreach ($linea in $lineas) {
    if ($linea -match ":") {
        $partes = $linea.Split(":") # -match para expresion regular(esto es nuevo)
        $usuario = $partes[0]
        $hashNTLM = $partes[3]
        
        
        Write-Host "$usuario - $hashNTLM"
    }
}
