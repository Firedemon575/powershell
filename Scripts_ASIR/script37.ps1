$texto = Get-Content "C:\Users\Pablo Porras\Desktop\SRI\Script\tarea.txt"
$l=$texto.Length

for ($i=0; $i -lt $l; $i++){
$a=get-process -name $texto[$i]
Stop-Process -id $a.ID
}




