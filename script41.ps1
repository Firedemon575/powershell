
$a = Get-Content -path datos.txt 
$l=$a.Length
for ($i=0; $i -lt $l; $i++){
$partes=$a[$i].Split("-")
$u=$partes[0]
$c=$partes[1]
$pw=ConvertTo-SecureString $c -AsPlainText -Force
New-localuser -name $u -Password $pw

}
