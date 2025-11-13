$texto=get-content "c:/windows/system32/drivers/etc/hosts"
$l=$texto.Length
for ($i=0; $i -lt $l; $i++){

if ( !$texto[$i].StartsWith("#")){
$a=$texto[$i].Trim()
if ($a -ne ""){

Write-Host $a}


}

}


