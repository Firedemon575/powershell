$ruta="C:\Users\Pablo Porras\Desktop\SRI\Script\proceso.txt"
$a=get-process
$l=$a.length
$cadena=""

for ($i=0; $i -lt $l; $i++){

if ($a[$i].SI -eq 0){


 $cadena=$cadena + $a[$i].ProcessName + "`n"
}

}

Set-Content -Path $ruta -Value $cadena

