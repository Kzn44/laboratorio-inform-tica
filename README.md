# Laboratorio Informatica

Repositorio de practica para la fase 0: herramientas del informatico.

## Comandos aprendidos

### Terminal

- `pwd`: muestra la ruta actual.
- `ls`: lista archivos y carpetas.
- `cd`: cambia de carpeta.
- `cd ..`: sube a la carpeta anterior.
- `mkdir`: crea una carpeta.
- `.`: representa la carpeta actual.
- `..`: representa la carpeta anterior.

### Rutas

- Ruta absoluta: indica la ubicacion completa desde la raiz del sistema.
- Ruta relativa: depende de la carpeta actual.
- Ejemplo de ruta absoluta en Windows: `C:\Users\admin\Documents`.
- Ejemplo de ruta relativa: `.\scripts\saludo.ps1`.

### Git

- `git init`: inicializa un repositorio.
- `git status`: muestra el estado actual del repositorio, la rama actual y los cambios pendientes.
- `git add archivo`: prepara un archivo para un commit.
- `git add .`: prepara todos los cambios de la carpeta actual hacia abajo.
- `git commit -m "mensaje"`: guarda cambios en el historial.
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

## Notas personales

- Git local guarda el historial en la carpeta oculta `.git`.
- Un commit guarda una version del proyecto en mi computador.
- Push sirve para subir commits a un repositorio remoto.
- `HEAD` indica el commit/rama donde estoy parado actualmente.
- `working tree clean` significa que no hay cambios pendientes respecto al ultimo commit.
- En un conflicto, `HEAD` muestra la version de la rama actual y el nombre de la otra rama muestra la version que se intenta integrar.
- Si Git abre Vim para confirmar un commit, `Esc` + `:wq` guarda y sale.
- En Vim, `Esc` + `:q!` sale sin guardar.

## Rutas

- Una ruta absoluta indica la ubicacion completa desde la raiz del sistema.
- Una ruta relativa depende de la carpeta actual.
- `.` representa la carpeta actual.
- `..` representa la carpeta anterior.

## Rebase

- `git rebase` permite mover commits de una rama para que queden encima de otra.

## Historial

- `git log --oneline --graph --all` muestra el historial como grafo.

## PowerShell

- `New-Item`: crea archivos o carpetas.
- `Set-Content`: escribe contenido reemplazando lo anterior.
- `Add-Content`: agrega contenido al final de un archivo.
- `Get-Content`: muestra el contenido de un archivo.
- `Copy-Item`: copia archivos o carpetas.
- `Move-Item`: mueve archivos o carpetas.
- `Rename-Item`: cambia el nombre de un archivo o carpeta.
- `Remove-Item`: elimina archivos o carpetas.
- `Get-ChildItem`: lista archivos y carpetas.
- `Select-String`: busca texto dentro de archivos.
- `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`: permite ejecutar scripts solo en la sesion actual.

### Scripts PowerShell

- Ejecutar script: `.\scripts\saludo.ps1 -Nombre "Kzn"`.
- Parametro simple: `param([string]$Nombre)`.
- Escribir en pantalla: `Write-Host "texto"`.
- Crear variable: `$Cantidad = 3`.
- Condicion: `if ($Cantidad -eq 0) { ... } else { ... }`.
- Contar elementos de una carpeta: `(Get-ChildItem ".").Count`.

### Flujo recomendado de trabajo

1. Revisar estado: `git status`.
2. Ver cambios: `git diff`.
3. Preparar cambios: `git add archivo`.
4. Guardar version: `git commit -m "mensaje claro"`.
5. Revisar historial: `git log --oneline --graph --all`.
