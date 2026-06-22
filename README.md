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

### Flags comunes de Git

- `-m`: se usa en `git commit -m "mensaje"` para escribir el mensaje del commit.
- `-u`: se usa en `git push -u origin master` para conectar una rama local con su rama remota.
- `-n`: se usa en `git log -n 5` para limitar la cantidad de commits mostrados.
- `--oneline`: se usa en `git log --oneline` para mostrar cada commit en una sola linea.
- `--graph`: se usa en `git log --graph` para mostrar ramas y merges como grafo.
- `--all`: se usa en `git log --all` para incluir todas las ramas.
- `-c`: se usa en `git switch -c nombre-rama` para crear una rama y cambiarse a ella.
- `-d`: se usa en `git branch -d nombre-rama` para borrar una rama local ya integrada.
- `-D`: se usa en `git branch -D nombre-rama` para borrar una rama local aunque no este integrada.
- `--continue`: continua una operacion pausada, como un `rebase`, despues de resolver conflictos.
- `--abort`: cancela una operacion en curso, como un `merge` o `rebase`.
- `--skip`: salta el commit actual durante un `rebase`.

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
- Hostname dentro de Debian: `kzn`.
- Usuario de practica: `kzn`.
- Red: funcionando, verificada con `ping -c 4 deb.debian.org`.
- Checkpoint creado: instalacion limpia de Debian.
- Uso: laboratorio seguro para Bash, Linux basico, permisos y procesos.

La VM sirve para practicar comandos, scripts, permisos, procesos y configuraciones sin arriesgar el sistema Windows principal. Si algo se rompe, se puede volver al checkpoint.

### Tipos de maquinas virtuales

- Maquina virtual de sistema: simula un computador completo y ejecuta un sistema operativo invitado. Ejemplo: Debian dentro de Hyper-V.
- Maquina virtual de lenguaje: ejecuta programas de un lenguaje dentro de un runtime controlado. Ejemplos: JVM, .NET CLR, BEAM.
- En este laboratorio se uso una maquina virtual de sistema.

Resumen del laboratorio:

- Host: Windows 11 Pro.
- Guest: Debian GNU/Linux 13 (trixie).
- Hipervisor: Hyper-V.
- ISO: medio de instalacion.
- Disco virtual: lugar donde queda instalado Debian.
- Checkpoint: punto de restauracion de la VM.

## Flujo remoto

- El repositorio esta conectado a GitHub como remoto.
- Windows puede subir cambios a GitHub con `git push`.
- Debian puede clonar el repositorio con `git clone`.
- Debian puede subir cambios a GitHub con `git push`.
- Windows puede traer cambios desde GitHub con `git pull`.
- Debian puede traer cambios desde GitHub con `git pull`.
- GitHub CLI (`gh auth login`) permite autenticarse desde Debian.
- Flujo probado: Windows -> GitHub -> Debian.
- Flujo probado: Debian -> GitHub -> Windows.

## Pull Request

- Un pull request permite proponer cambios desde una rama antes de integrarlos a `master`.
- Sirve para revisar diferencias, comentar y aprobar cambios antes del merge.
- Flujo practicado: crear rama, subirla a GitHub, abrir PR, hacer merge y actualizar `master` con `git pull`.

## VSCode

- VSCode permite editar archivos, usar terminal integrada, buscar en todo el proyecto y revisar cambios de Git.
- El panel Source Control muestra archivos modificados, diferencias y permite hacer commits.
- La terminal integrada permite ejecutar comandos sin salir del editor.
