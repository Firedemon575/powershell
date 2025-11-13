# Cargar el conector de MySQL
[Reflection.Assembly]::LoadFrom("C:\Program Files (x86)\MySQL\MySQL Connector NET 9.5\MySql.Data.dll")

# Configuración de conexión
$server = "localhost"
$database = "procesos"
$user = "root"
$password = ""
$ruta = "C:\xampp\htdocs\procesos.php"   # Ruta donde se creará o usará el archivo PHP

$connectionString = "server=$server;user id=$user;password=$password;database=$database"

# Crear conexión MySQL
$connection = New-Object MySql.Data.MySqlClient.MySqlConnection
$connection.ConnectionString = $connectionString

# Obtener procesos actuales del sistema
$p = Get-Process
$l = $p.Length

try {
    $connection.Open()
    Write-Host "Conexión exitosa a MySQL."

    # Eliminar los registros antiguos
    $deleteQuery = "DELETE FROM proceso"
    $deleteCommand = New-Object MySql.Data.MySqlClient.MySqlCommand($deleteQuery, $connection)
    $deleteCommand.ExecuteNonQuery()
    Write-Host "Tabla 'proceso' limpiada correctamente."

    # Insertar los nuevos procesos
    for ($i = 0; $i -lt $l; $i++) {
        $pro = $p[$i].ProcessName
        $id = $p[$i].Id

        $query = "INSERT INTO proceso (nombre, id) VALUES('$pro', $id)"
        $command = New-Object MySql.Data.MySqlClient.MySqlCommand($query, $connection)
        $command.ExecuteNonQuery()
    }

    Write-Host "Procesos actualizados en la base de datos."
}
catch {
    Write-Host "Error al procesar: $($_.Exception.Message)"
}
finally {
    $connection.Close()
}

