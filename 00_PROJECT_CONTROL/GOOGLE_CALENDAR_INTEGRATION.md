---
type: integration_guide
status: proposed
owner: Project Control
---

# Google Calendar Integration

## Recomendación inicial

Comenzar con un calendario **read-only mediante ICS**. Esto permite ver eventos sin conceder permisos de escritura ni almacenar OAuth en el repositorio.

Carpeta local de eventos:

`00_PROJECT_CONTROL/CALENDAR_EVENTS/`

## Estado de plugins

Los plugins `Calendar` y **Full Calendar 0.10.7** están presentes. Full Calendar apareció durante esta revisión por una acción externa a Codex. Esta pasada no lo instaló, no modificó su configuración y no abrió ni escribió su `data.json`.

## Opción A — Full Calendar / Full Calendar Remastered

Después de aprobación del owner:

1. Abra los settings de Full Calendar.
2. Agregue un calendario remoto de tipo ICS.
3. Seleccione modo read-only.
4. Use el URL privado de Google Calendar solo en la interfaz local del plugin.
5. Si el plugin permite notas locales, use `00_PROJECT_CONTROL/CALENDAR_EVENTS/`.
6. Valide zona horaria, eventos recurrentes y cambios de fecha.
7. Revise que ningún secreto aparezca en Git.

Full Calendar admite eventos como notas y calendarios remotos ICS read-only, según su documentación.

## Obtener un ICS desde Google Calendar

Use el enlace privado de calendario proporcionado por Google Calendar. Trátelo como una credencial:

- no pegarlo en Markdown;
- no incluirlo en screenshots públicos;
- no registrarlo en issues o Discord;
- no guardarlo en plantillas;
- revocarlo si se expone.

## Qué no debe versionarse

- URLs ICS privadas.
- Tokens OAuth.
- Client IDs/client secrets.
- Cookies o credenciales.
- `.obsidian/plugins/*/data.json`.
- Exportaciones de calendario con datos personales no revisados.

## Flujo local recomendado

1. Calendario de Google = agenda externa read-only.
2. Eventos relevantes al proyecto = nota local desde `Template_Calendar_Event.md`.
3. La nota local enlaza requisitos, review, prueba o entregable.
4. [[../00_DASHBOARD/Team_Calendar|Team Calendar]] muestra eventos locales mediante Dataview.

## Rollback

Desactive o elimine la fuente ICS desde settings del plugin. No borre notas locales sin revisión.

Referencias:

- [Full Calendar documentation](https://obsidian-community.github.io/obsidian-full-calendar/)
- [Full Calendar repository](https://github.com/obsidian-community/obsidian-full-calendar)
