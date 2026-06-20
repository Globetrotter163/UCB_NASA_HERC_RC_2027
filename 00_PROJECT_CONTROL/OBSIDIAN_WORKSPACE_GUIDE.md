# Guía del espacio de trabajo de Obsidian

## Abrir el proyecto

En Obsidian, seleccione **Abrir carpeta como vault** y elija la carpeta raíz `NASA ERC 2027`. No cree `01_OBSIDIAN_VAULT` ni un vault dentro del vault.

## Qué tocar

- Trabaje en carpetas técnicas, Control del proyecto, Reuniones, Plantillas y paneles.
- No edite `.obsidian/` sin autorización.
- No trabaje directamente en `.tmp.driveupload/` o `.tmp.drivedownload/`.
- No cambie el CAD maestro local sin bloqueo y responsable.

## Nota diaria

1. Copie `12_TEMPLATES/Template_Daily_Status.md`.
2. Guárdela como `00_PROJECT_CONTROL/DAILY_STATUS/YYYY-MM-DD.md`.
3. Complete `date`, `owner`, `status` y puntuaciones de 0 a 5.
4. Enlace evidencia real; no puntúe por intención.
5. Excluya ejemplos usando `status: example`.

Escala: 0 sin actividad/evidencia; 1 mínima; 2 parcial/débil; 3 verificable; 4 fuerte; 5 hito o evidencia robusta.

## Plantillas y frontmatter

Templater ya apunta a `12_TEMPLATES/`. El frontmatter debe conservar claves, ID y estados. Use listas YAML cuando haya varios requisitos, responsables o subsistemas.

## Mapas de calor

Los mapas de calor leen notas diarias. Después de guardar una nota, abra el panel y compare contra la tabla de respaldo. Si el gráfico falla, confirme Dataview, consultas JavaScript y Heatmap Calendar; no cambie datos para “hacer aparecer” el gráfico.

## Registrar una decisión

Use `Template_Decision.md`, asigne `DEC-000`, documente opciones y evidencia y registre la decisión oficial aprobada en `02_Systems_Engineering/Decision_Log.md`. Un agente no completa la aprobación.

## Registrar una prueba

Use `Template_Test.md`, asigne `TST-000`, enlace requisitos y riesgos, defina criterio de éxito antes de ejecutar y guarde datos en `16_TEST_DATA/`.

## Registrar una falla

Use `Template_Failure_Report.md`; preserve datos crudos, describa síntomas sin inferir causa y enlace el análisis de causa raíz y la acción correctiva.

## Cerrar una tarea

Verifique evidencia, actualice el documento oficial afectado y agregue enlace de cierre. “Hecho” en Discord no cierra una acción técnica.

## Revisión semanal

1. Crear nota desde `Template_Weekly_Status.md`.
2. Revisar panel, bucles abiertos, riesgos, interfaces y requisitos.
3. Comparar puntuaciones con evidencia.
4. Resolver responsables y fechas.
5. Registrar decisiones propuestas.
6. Publicar en Discord únicamente enlaces a notas oficiales.
