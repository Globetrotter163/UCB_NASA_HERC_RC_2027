---
type: integration_guide
status: configured_local_only
owner: Project Control
---

# Integración con Google Calendar

## Estado seguro actual

Calendar y Full Calendar están instalados. No se configuró una fuente externa ni se almacenaron URLs privadas, OAuth o credenciales. El calendario operativo lee notas locales desde:

`00_PROJECT_CONTROL/CALENDAR_EVENTS/`

## Opción recomendada para conexión externa

Use un calendario **de solo lectura mediante ICS**. Permite ver eventos sin conceder escritura ni almacenar OAuth en el repositorio.

Después de aprobación del responsable:

1. Abra los ajustes de Full Calendar.
2. Añada un calendario remoto de tipo ICS.
3. Seleccione modo de solo lectura.
4. Introduzca la URL privada únicamente en la interfaz local.
5. Valide zona horaria, recurrencia y cambios de fecha.
6. Revise que ningún secreto aparezca en Git.

## La URL ICS es una credencial

- No la pegue en Markdown.
- No la incluya en capturas públicas.
- No la publique en issues ni Discord.
- No la guarde en plantillas.
- Revóquela si se expone.

## Flujo recomendado

1. Google Calendar = agenda externa de solo lectura.
2. Evento relevante = nota local desde `Template_Calendar_Event.md`.
3. La nota local enlaza revisión, requisito, prueba o entregable.
4. [[../00_DASHBOARD/Team_Calendar|Calendario del equipo]] muestra los eventos locales.

## Reversión

Deshabilite o elimine la fuente ICS desde los ajustes del complemento. No borre notas locales sin revisión.

Referencias:

- [Documentación de Full Calendar](https://obsidian-community.github.io/obsidian-full-calendar/)
- [Repositorio de Full Calendar](https://github.com/obsidian-community/obsidian-full-calendar)

