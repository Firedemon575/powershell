###############################################
###############################################
###############################################
#############################################
################ Funciones #######
function comparar {
param (
[int]$n1,
[int]$n2
)
 

}



if ($n1 -gt $n2){
$mayor=$n1
}
else{
$mayor=$n2
}
return $mayor


$n1= Read-Host -Prompt "Operador 1"
$n2= Read-Host -Prompt "operador 2"
$resultado = compara -n1 $n1 -n2 $n2
Write-Host "el resultado es $resultado"