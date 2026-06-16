# Laboratorio Informatica

Repositorio de practica para la fase 0: herramientas del informatico.

## Terminal y rutas

- `pwd`: muestra la ruta actual.
- `ls`: lista archivos y carpetas.
- `cd carpeta`: entra a una carpeta.
- `cd ..`: sube a la carpeta anterior.
- `mkdir carpeta`: crea una carpeta.
- `.`: representa la carpeta actual.
- `..`: representa la carpeta anterior.
- Ruta absoluta: indica la ubicacion completa desde la raiz del sistema.
- Ruta relativa: depende de la carpeta actual.
- Ejemplo de ruta absoluta en Windows: `C:\Users\admin\Documents`.
- Ejemplo de ruta relativa en Windows: `.\scripts\saludo.ps1`.
- Ejemplo de ruta absoluta en Linux: `/home/kzn/practica-bash`.
- Ejemplo de ruta relativa en Linux: `./reporte.sh`.

## Git

- `git init`: inicializa un repositorio.
- `git status`: muestra el estado del repositorio, la rama actual y los cambios pendientes.
- `git add archivo`: prepara un archivo para el proximo commit.
- `git add .`: prepara todos los cambios de la carpeta actual hacia abajo.
- `git commit -m "mensaje"`: guarda una version en el historial.
- `git log --oneline`: muestra el historial resumido.
- `git log --oneline --graph --all`: muestra el historial como grafo.
- `git branch`: muestra las ramas locales.
- `git switch nombre-rama`: cambia a otra rama.
- `git switch -c nombre-rama`: crea una rama y cambia a ella.
- `git merge nombre-rama`: integra otra rama en la rama actual.
- `git branch -d nombre-rama`: elimina una rama local ya integrada.
- `git rebase nombre-rama`: mueve los commits de la rama actual para dejarlos encima de otra rama.
- `git rebase --continue`: continua un rebase despues de resolver conflictos.
- `git rebase --skip`: salta el commit actual durante un rebase.
- `git rebase --abort`: cancela un rebase y vuelve al estado anterior.

### Notas de Git

- Git local guarda el historial en la carpeta oculta `.git`.
- Un commit guarda una version del proyecto en el computador.
- `push` sube commits a un repositorio remoto.
- `pull` trae cambios desde un repositorio remoto.
- `HEAD` indica el commit o rama donde estoy parado actualmente.
- `working tree clean` significa que no hay cambios pendientes respecto al ultimo commit.
- En un conflicto, `HEAD` muestra la version de la rama actual y el nombre de la otra rama muestra la version que se intenta integrar.
- Si Git abre Vim para confirmar un commit, `Esc` + `:wq` guarda y sale.
- En Vim, `Esc` + `:q!` sale sin guardar.

### Flujo recomendado con Git

1. Revisar estado: `git status`.
2. Ver cambios: `git diff`.
3. Preparar cambios: `git add archivo`.
4. Guardar version: `git commit -m "mensaje claro"`.
5. Revisar historial: `git log --oneline --graph --all`.

## PowerShell

- `Get-ChildItem`: lista archivos y carpetas.
- `New-Item`: crea archivos o carpetas.
- `Set-Content`: escribe contenido reemplazando lo anterior.
- `Add-Content`: agrega contenido al final de un archivo.
- `Get-Content`: muestra el contenido de un archivo.
- `Copy-Item`: copia archivos o carpetas.
- `Move-Item`: mueve archivos o carpetas.
- `Rename-Item`: cambia el nombre de un archivo o carpeta.
- `Remove-Item`: elimina archivos o carpetas.
- `Select-String`: busca texto dentro de archivos.
- `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`: permite ejecutar scripts solo en la sesion actual.

### Scripts PowerShell

- Ejecutar script: `.\scripts\saludo.ps1 -Nombre "Kzn"`.
- Parametro simple: `param([string]$Nombre)`.
- Escribir en pantalla: `Write-Host "texto"`.
- Crear variable: `$Cantidad = 3`.
- Condicion: `if ($Cantidad -eq 0) { ... } else { ... }`.
- Contar elementos de una carpeta: `(Get-ChildItem ".").Count`.

## Bash

- `pwd`: muestra la ruta actual.
- `whoami`: muestra el usuario actual.
- `hostname`: muestra el nombre del equipo.
- `date`: muestra la fecha y hora.
- `uname -a`: muestra informacion del sistema.
- `ls`: lista archivos y carpetas.
- `ls -la`: lista archivos con detalles y archivos ocultos.
- `mkdir carpeta`: crea una carpeta.
- `cd carpeta`: cambia de carpeta.
- `touch archivo.txt`: crea un archivo vacio o actualiza su fecha de modificacion.
- `echo "texto"`: muestra texto en la terminal.
- `echo "texto" > archivo.txt`: escribe reemplazando el contenido.
- `echo "texto" >> archivo.txt`: agrega texto al final.
- `cat archivo.txt`: muestra el contenido de un archivo.
- `cp origen destino`: copia archivos o carpetas.
- `mv origen destino`: mueve o renombra archivos o carpetas.
- `rm archivo`: elimina archivos.
- `grep "texto" archivo`: busca texto dentro de un archivo.
- `comando | otro-comando`: envia la salida de un comando como entrada de otro.

### Scripts Bash

- Shebang: `#!/bin/bash`.
- Primer argumento: `$1`.
- Variable: `nombre=$1`.
- Valor por defecto: `ruta=${2:-.}`.
- Ejecutar comando y guardar salida: `cantidad=$(ls "$ruta" | wc -l)`.
- Condicion: `if [ "$cantidad" -eq 0 ]; then ... else ... fi`.
- Permiso de ejecucion: `chmod +x archivo.sh`.
- Ejecutar script en la carpeta actual: `./archivo.sh`.

## Linux basico

- `sudo comando`: ejecuta un comando con privilegios administrativos.
- `sudo apt update`: actualiza la lista de paquetes disponibles.
- `sudo apt upgrade`: instala actualizaciones disponibles.
- `chmod +x archivo.sh`: agrega permiso de ejecucion.
- `r`: permiso de lectura.
- `w`: permiso de escritura.
- `x`: permiso de ejecucion.
- `ps`: muestra procesos de la terminal actual.
- `ps aux`: muestra procesos del sistema.
- `ps aux | grep nombre`: busca procesos por nombre.
- `sleep 300 &`: ejecuta un proceso en segundo plano.
- `jobs`: muestra trabajos en segundo plano.
- `kill PID`: termina un proceso por su identificador.
- PID significa Process ID: identificador unico de un proceso.

## Maquina virtual Debian

- Host: el sistema real que ejecuta la VM, en este caso Windows.
- Guest: el sistema instalado dentro de la VM, en este caso Debian.
- Hipervisor: software que ejecuta maquinas virtuales; se uso Hyper-V.
- ISO: archivo usado como medio de instalacion de Debian.
- Disco virtual: archivo que funciona como disco duro de la VM.
- Snapshot o checkpoint: punto de restauracion de la VM.
- Red virtual: conexion de red usada por la VM para acceder a internet o al host.

Configuracion usada para el laboratorio:

- VM: `debian-lab`.
- Sistema: Debian 13.
- Hipervisor: Hyper-V.
- Uso: laboratorio seguro para Bash, Linux basico, permisos y procesos.
