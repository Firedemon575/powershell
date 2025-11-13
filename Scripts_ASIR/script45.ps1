###Escribe un script en powershell que, 
##a partir de dicho fichero, 
##muestre una lista indicando para cada usuario 
##cual es su carpeta de trabajo

$ruta = "C:\Users\Pablo Porras\Desktop\SRI\Script\passwd.txt"
$lineas = Get-Content $ruta

foreach ($linea in $lineas) {
         if ($linea -match ":") {
        $partes = $linea.Split(":") 
        $usuario = $partes[0]
        $dir_trabajo=$partes[5]
         Write-Host "$usuario -> $dir_trabajo"
   
        
    }
}
