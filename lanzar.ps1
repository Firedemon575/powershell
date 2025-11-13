$accion = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-File 'C:\Users\Pablo Porras\Desktop\SRI\Script\proceso_php.ps1'"

$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date) `
    -RepetitionInterval (New-TimeSpan -Minutes 3) `
    -RepetitionDuration (New-TimeSpan -Days 1)

Register-ScheduledTask -TaskName "MiTareaCada3Minutos" -Action $accion -Trigger $trigger -User "NT AUTHORITY\SYSTEM" -RunLevel Highest
