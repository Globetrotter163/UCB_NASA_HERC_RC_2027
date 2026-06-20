---
type: workspace_acceptance
version: 0.1-beta
status: pending_manual_validation
date: 2026-06-20
---

# Lista de aceptación de la beta del espacio de trabajo

Esta lista separa lo comprobado desde archivos de lo que necesita una prueba visual dentro de Obsidian.

## Configuración verificada por archivos

- [x] Formato de nota diaria `YYYY-MM-DD`.
- [x] Destino de notas diarias `00_PROJECT_CONTROL/DAILY_STATUS`.
- [x] Plantilla diaria `12_TEMPLATES/Template_Daily_Status`.
- [x] Carpeta de plantillas nativas y Templater: `12_TEMPLATES`.
- [x] QuickAdd contiene el menú `NASA HERC — Crear nota`.
- [x] QuickAdd contiene diez acciones y evita sobrescritura silenciosa.
- [x] QuickAdd tiene funciones en línea deshabilitadas y claves vacías.
- [x] Templater no ejecuta comandos del sistema.
- [x] El grafo filtra archivo, `.obsidian`, resultados de agentes y temporales.
- [x] El grafo oculta adjuntos, huérfanos y enlaces sin resolver.
- [x] El grafo contiene grupos de color por área.
- [x] Bases está habilitado como complemento nativo.
- [x] Calendar y Full Calendar están instalados.
- [x] Full Calendar no tiene una fuente externa configurada.
- [x] Homepage no está instalado y está documentado como opcional.
- [x] El snippet `herc-folder-colors` está activo.
- [x] Las notas `*-000_Example.md` usan `status: example`.
- [x] El estado diario estructural usa `status: example`.

## Prueba manual dentro de Obsidian

- [ ] El Centro de mando abre todos los destinos críticos.
- [ ] El menú QuickAdd crea cada tipo de nota en su carpeta canónica.
- [ ] Un ID duplicado solicita una decisión y no sobrescribe.
- [ ] La captura de bucle abierto agrega una viñeta sin dañar la tabla existente.
- [ ] La nota diaria de hoy se crea con frontmatter válido.
- [ ] Dataview renderiza las tablas del Panel del proyecto.
- [ ] Tasks renderiza las tareas bloqueadas.
- [ ] Los cuatro mapas de calor renderizan o muestran su respaldo.
- [ ] El Calendario del equipo muestra eventos locales.
- [ ] La vista de grafo muestra los grupos y filtros configurados.
- [ ] El snippet es legible en tema claro y oscuro.

## Bases

Las vistas `.base` todavía deben crearse desde la interfaz para asegurar compatibilidad:

- [ ] Requisitos.
- [ ] Decisiones.
- [ ] Interfaces.
- [ ] Riesgos.
- [ ] Pruebas.
- [ ] Fallas.
- [ ] Entregables.
- [ ] Tareas incompletas.

Cada vista operativa debe excluir `status: example` y coincidir con su índice humano.

## Seguridad y regresión

- [x] No se detectaron claves de API configuradas en QuickAdd.
- [x] No se añadió ninguna URL ICS privada.
- [x] No se movieron ni renombraron directorios principales.
- [x] No se promovió ningún objeto técnico a `approved`.
- [x] Los ejemplos quedaron delimitados y excluidos de las consultas operativas.
- [ ] Una persona debe revisar `git diff` antes de cualquier commit.
- [ ] El equipo debe decidir si conserva o retira del seguimiento `workspace.json` y los binarios de complementos.

## Aceptación humana

| Rol | Persona | Fecha | Resultado | Notas |
|---|---|---|---|---|
| Líder del proyecto | Israel Silva | Por definir | pending | |
| Ingeniero de sistemas | Alan Gonzales | Por definir | pending | |
| Responsable del vault/flujo | Por definir | Por definir | pending | |
