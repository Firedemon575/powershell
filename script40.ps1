$ruta = "C:\Users\Pablo Porras\Desktop\SRI\Script\f1.txt"
$a = Get-Content $ruta 
$l=$a.Length
for ($i=0; $i -lt $l; $i++){
$partes=$a[$i].Split("-")
write-host $partes[0]

}
