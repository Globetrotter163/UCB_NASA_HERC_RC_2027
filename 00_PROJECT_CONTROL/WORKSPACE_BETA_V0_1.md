---
type: workspace_release
version: 0.1-beta
date: 2026-06-20
status: active
owner: Project Control
---

# Workspace beta v0.1

Esta versión establece una experiencia de trabajo coherente sin mover ni renombrar los directorios principales del proyecto.

## Qué está listo

- Entrada única desde [[../00_DASHBOARD/Command_Center|Centro de mando]].
- Creación guiada de notas mediante QuickAdd y plantillas controladas.
- Notas diarias dirigidas a `00_PROJECT_CONTROL/DAILY_STATUS/`.
- Paneles Dataview que excluyen objetos con `status: example`.
- Rutas canónicas documentadas en [[CANONICAL_PATHS]].
- Colores de carpetas usados solo como ayuda visual.
- Manual de uso, flujo de notas y configuración rápida en español.
- Claves técnicas YAML y valores de flujo conservados en inglés para no romper consultas.

## Límite de la beta

La beta mejora navegación, captura y consistencia, pero **no declara que el contenido técnico esté aprobado**. Requisitos, riesgos, interfaces, decisiones, pruebas y entregables necesitan revisión humana de sus responsables.

## Notas de ejemplo delimitadas

Las siguientes notas son material didáctico y nunca cuentan como estado operativo:

- `02_Systems_Engineering/Decisions/DEC-000_Example.md`
- `02_Systems_Engineering/Interfaces/ICD-000_Example.md`
- `02_Systems_Engineering/Risks/RSK-000_Example.md`
- `07_TESTING_VALIDATION/Tests/TST-000_Example.md`
- `07_TESTING_VALIDATION/Failures/FR-000_Example.md`

Reglas:

1. Mantener `status: example`.
2. No cambiar su ID a uno real.
3. No citarlas como evidencia.
4. Para practicar, copiar la nota y mantenerla como ejemplo.
5. Para trabajo real, crear una nota nueva mediante QuickAdd y asignar un ID válido.

## Borradores y propuestas

- `draft`: trabajo incompleto; puede cambiar sin control formal.
- `proposed`: listo para discusión, todavía sin aprobación.
- `in_review`: bajo revisión de una persona responsable.
- `approved`: aprobado por la autoridad indicada.
- `verified`: respaldado por evidencia de verificación.
- `closed`: acción o riesgo cerrado con evidencia.
- `archived`: material conservado fuera de la línea base vigente.

Una plantilla puede contener `draft` o `proposed` como valor inicial. Eso no convierte a la plantilla en un objeto técnico del proyecto.

## Material histórico

Las rutas históricas se conservan para proteger enlaces y trazabilidad. Antes de reutilizar una nota, compruebe su ruta en [[CANONICAL_PATHS]]. No mueva, fusione ni elimine contenido histórico sin una revisión de migración aprobada.

## Criterios para salir de beta

- Responsables y roles reales confirmados.
- Fuentes técnicas existentes clasificadas como vigentes, históricas o duplicadas.
- Registros oficiales revisados y enlazados con objetos individuales.
- Flujo QuickAdd probado por al menos una persona de cada área.
- Paneles comparados contra evidencia real.
- Revisión de enlaces y consultas sin errores.
- Aprobación humana del checklist en `00_PROJECT_CONTROL/REVIEWS/`.

## Documentos de operación

- [[MANUAL_DEL_EQUIPO]]
- [[FLUJO_DE_NOTAS]]
- [[CONFIGURACION_RAPIDA]]
- [[SOURCE_OF_TRUTH_MAP]]
- [[../00_DASHBOARD/Team_Onboarding_Map|Mapa de incorporación]]

