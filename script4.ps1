$num1=100 
$num2=200 
$num3=160 
if (($num1 -gt $num2)  -and  ($num1 -gt $num3) )  
{write-host "El mayor es" $num1}  
Elseif (($num2 -gt $num1)  -and  ($num2 -gt $num3) )  
{write-host "El mayor es" $num2}  
Else  
{write-host "El mayor es" $num3}  