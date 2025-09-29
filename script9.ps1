$Processes=get-process | select-object ProcessName 
$i=1 
foreach ($process in $Processes) 
{write-host $i "Process Name is " $process.Processname;$i++; } 