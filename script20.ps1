###############################################
#######Sincronizacion de Repositorio con Github
###############################################
$m = Read-Host -Prompt "Introduce mensaje"
git add .
git commit -m "$m"
git push --force origin main

