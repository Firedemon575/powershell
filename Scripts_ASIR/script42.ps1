
$a = Get-Content -path datos.txt 
$l=$a.Length
for ($i=0; $i -lt $l; $i++){
$partes=$a[$i].Split("-")
$u=$partes[0]
Remove-Localuser -Name $u


}
