---
type: workspace_setup
status: configured
owner: Vault owner
---

# Configuración de QuickAdd

QuickAdd está configurado para crear notas en sus rutas canónicas sin sobrescribir archivos existentes. Las funciones en línea están deshabilitadas y no hay claves de API almacenadas.

Para reproducir esta configuración en otra computadora, use el script indicado en [[CONFIGURACION_RAPIDA#Reaplicar QuickAdd y Templater en otra computadora]].

## Menú disponible

Abra la paleta de comandos y ejecute **QuickAdd: Run QuickAdd**. El menú **NASA HERC — Crear nota** contiene:

| Opción | Plantilla | Destino |
|---|---|---|
| Nuevo requisito | `Template_Requirement.md` | `01_Requirements/Requirements/` |
| Nueva interfaz | `Template_Interface.md` | `02_Systems_Engineering/Interfaces/` |
| Nueva decisión | `Template_Decision.md` | `02_Systems_Engineering/Decisions/` |
| Nuevo riesgo | `Template_Risk.md` | `02_Systems_Engineering/Risks/` |
| Nueva prueba | `Template_Test.md` | `07_TESTING_VALIDATION/Tests/` |
| Nuevo reporte de falla | `Template_Failure_Report.md` | `07_TESTING_VALIDATION/Failures/` |
| Nueva minuta | `Template_Meeting.md` | Carpeta seleccionada en `11_MEETINGS/` |
| Nuevo estado diario | `Template_Daily_Status.md` | `00_PROJECT_CONTROL/DAILY_STATUS/` |
| Nuevo evento | `Template_Calendar_Event.md` | `00_PROJECT_CONTROL/CALENDAR_EVENTS/` |
| Capturar bucle abierto | Captura rápida | `Open_Technical_Questions.md` |

## Convenciones de nombre

QuickAdd solicita el identificador o título y antepone el prefijo correspondiente:

- Requisito: `REQ-`
- Interfaz: `ICD-`
- Decisión: `DEC-`
- Riesgo: `RSK-`
- Prueba: `TST-`
- Falla: `FR-`
- Minutas y eventos: fecha en formato `YYYY-MM-DD`

Introduzca solo la parte restante. Ejemplo: para `RSK-014_Bateria`, escriba `014_Bateria`.

## Captura de bucles abiertos

La opción añade una tarea con fecha y etiqueta `#bucle-abierto` al final de `02_Systems_Engineering/Open_Technical_Questions.md`.

La captura funciona como bandeja de entrada. El responsable de sistemas debe clasificarla y, cuando corresponda, convertirla en una nota formal de riesgo, decisión, interfaz u otro registro.

## Comportamiento seguro

- Si el archivo ya existe, QuickAdd pregunta qué hacer.
- No está permitido sobrescribir silenciosamente.
- Las notas se abren en vista activa.
- No se ejecutan scripts externos.
- Las funciones en línea están deshabilitadas.
- Las claves de API permanecen vacías.

## Validación

- [ ] El menú **NASA HERC — Crear nota** aparece en la paleta.
- [ ] Cada opción crea la nota en la carpeta indicada.
- [ ] El frontmatter se conserva.
- [ ] Un ID duplicado no sobrescribe archivos.
- [ ] Las notas de ejemplo mantienen `status: example`.
- [ ] La captura no altera filas existentes del registro.

Referencias:

- [Repositorio oficial de QuickAdd](https://github.com/chhoumann/quickadd)
- [Documentación de opciones de plantilla](https://quickadd.obsidian.guide/docs/Choices/TemplateChoice/)
- [Documentación de capturas](https://quickadd.obsidian.guide/docs/Choices/CaptureChoice/)
