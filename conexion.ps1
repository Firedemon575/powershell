## [Reflection.Assembly]::LoadFrom("C:\Program Files (x86)\MySQL\MySQL Connector NET 9.5\MySql.Data.dll")
$server = "localhost"
$database = "procesos"
$user = "root"
$password = ""

$connectionString = "server=$server;user id=$user;password=$password;database=$database"

$connection = New-Object MySql.Data.MySqlClient.MySqlConnection
$connection.ConnectionString = $connectionString


$p=get-process
$l=$p.length

try {
    $connection.Open()
    Write-Host "Conexion exitosa a MySQL."
  for ($i=0; $i -lt $l; $i++)
    {
    $pro=$p[$i].ProcessName
    $id= $p[$i].Id

    $query = "INSERT INTO proceso VALUES('$pro',$id)"
    $command = New-Object MySql.Data.MySqlClient.MySqlCommand($query, $connection)
    $reader = $command.ExecuteReader()
    $reader.Close()
    }
  }
catch {
    Write-Host "Error"
}
finally {
    $connection.Close()
}