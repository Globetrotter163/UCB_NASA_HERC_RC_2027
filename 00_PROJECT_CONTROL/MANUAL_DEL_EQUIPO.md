---
type: team_manual
status: active
owner: Project Control
---

# Manual del equipo

## La idea central

Cada dato importante debe tener una ubicación canónica, un responsable y evidencia. Discord coordina; Obsidian conserva la memoria técnica; GitHub controla código; Drive conserva los archivos maestros CAD.

## Antes de comenzar

1. Abra [[../00_DASHBOARD/Command_Center|Centro de mando]].
2. Lea [[SOURCE_OF_TRUTH_MAP]].
3. Encuentre su área en [[../00_DASHBOARD/Team_Onboarding_Map|Mapa de incorporación]].
4. Lea el `README.md` de esa área.
5. Verifique en [[PROJECT_ROLES]] quién puede revisar o aprobar su trabajo.

## Crear una nota

Ruta recomendada:

1. Abra la paleta de comandos de Obsidian.
2. Ejecute **QuickAdd: Run QuickAdd**.
3. Elija **NASA HERC — Crear nota**.
4. Seleccione el tipo de nota.
5. Introduzca un ID o título claro.
6. Complete el frontmatter y el contenido.
7. Enlace requisitos, riesgos, pruebas, decisiones y evidencia relacionados.
8. Solicite revisión humana cuando corresponda.

Si QuickAdd no está disponible, copie la plantilla desde `12_TEMPLATES/` y guárdela en el destino indicado en [[FLUJO_DE_NOTAS]].

## Escribir metadatos

Las claves YAML se mantienen en inglés porque Dataview y los paneles dependen de ellas. El contenido visible se escribe en español.

Ejemplo:

```yaml
---
type: risk
id: RSK-014
status: draft
owner: Nombre Apellido
severity: high
related_requirements:
  - REQ-021
---
```

No traduzca claves como `type`, `status`, `owner`, `severity`, `date` ni los valores controlados del flujo.

## Enlazar correctamente

- Use `[[Nota]]` para enlazar otra nota del vault.
- Enlace evidencia concreta, no solo una carpeta general.
- Una decisión debe enlazar opciones y evidencia.
- Una prueba debe enlazar requisitos y datos crudos.
- Una falla debe enlazar la prueba, análisis de causa y acción correctiva.
- Un entregable debe enlazar sus fuentes y evidencia de revisión.

## Cerrar trabajo

Una tarea no está cerrada solo porque se completó físicamente o se anunció en Discord.

Para cerrar:

1. Adjunte o enlace evidencia.
2. Actualice la nota técnica y su índice humano.
3. Registre la fecha y responsable.
4. Cambie `status` únicamente si tiene autoridad.
5. Compruebe que el panel correspondiente refleja el cambio.

## Reglas de seguridad documental

- No edite `.obsidian/` sin autorización del responsable del vault.
- No borre ni mueva notas para “ordenar” sin revisar enlaces e historial.
- No cambie archivos maestros CAD sin bloqueo y responsable.
- No use resultados de agentes de IA como aprobación.
- No cambie datos para hacer que un panel muestre el resultado deseado.
- No copie información sensible a servicios externos.

## Rutina semanal

1. Revisar [[../00_DASHBOARD/Project_Dashboard|Panel del proyecto]].
2. Revisar [[../00_DASHBOARD/Open_Loops|Bucles abiertos]].
3. Confirmar riesgos, interfaces y decisiones pendientes.
4. Comparar puntuaciones con evidencia.
5. Asignar responsable y fecha a cada acción.
6. Publicar en Discord enlaces a las notas oficiales.

## Si algo no encaja

No elija silenciosamente entre dos fuentes. Registre un bucle abierto mediante QuickAdd, identifique responsables y resuelva el conflicto en la fuente oficial correspondiente.

