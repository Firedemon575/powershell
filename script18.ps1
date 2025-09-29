###########################################################
#######   Matar  PROCESOS   ##########################
###########################################################
$a=read-host -Prompt "introduce el ID del proceso"
$b=Read-Host -Prompt "Seguro que quieres cerrar el proceso"
$c=Read-Host -Prompt "Estas realmente seguro"
$d=Read-Host -Prompt "Quieres vender tu alma (S/N)?"
if($d -eq "S")
{
kill $a}

