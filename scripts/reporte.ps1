param([string]$Nombre, [string]$Ruta = ".")
write-host "Reporte de practica para $Nombre"
write-host "Ruta Analizada: $Ruta"
$Cantidad = (Get-ChildItem $Ruta).Count
if ($Cantidad -eq 0) {
    Write-Host "La carpeta esta vacia."
} else {
    Write-Host "La carpeta contiene $Cantidad elementos."
}

Set-Content "reporte-practica.txt" "Reporte generado para $Nombre"
Add-Content "reporte-practica.txt" "Ruta analizada: $Ruta"
Add-Content "reporte-practica.txt" "Elementos encontrados: $Cantidad"

