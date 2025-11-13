###########################################################
#######   LISTADO DE PROCESOS   ##########################
###########################################################
$c=0;
$p=get-process
$l=$p.length
for ($i=0; $i -lt $l; $i++)
{
if($p[$i].ProcessName -eq "svchost")
{

$c++}
}
Write-Host "Hay "$c" procesos svchost"
Write-Host $c