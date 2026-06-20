---
type: setup_guide
status: active
owner: Vault owner
---

# Configuración rápida

## Primera apertura

1. En Obsidian, seleccione **Abrir carpeta como vault**.
2. Elija la carpeta raíz `NASA ERC 2027`.
3. Si Obsidian solicita confianza, revise el origen del repositorio y habilite los complementos de la comunidad.
4. Espere a que Obsidian cargue la configuración incluida en `.obsidian/`.
5. Abra [[../00_DASHBOARD/Command_Center|Centro de mando]].

No cree un segundo vault dentro del proyecto.

## Verificación de cinco minutos

- **Entrada:** abra `00_DASHBOARD/Command_Center.md` y añádalo a marcadores si lo desea.
- **QuickAdd:** la paleta debe mostrar `NASA HERC — Crear nota`.
- **Notas diarias:** debe crear archivos en `00_PROJECT_CONTROL/DAILY_STATUS/`.
- **Plantillas:** la carpeta configurada debe ser `12_TEMPLATES/`.
- **Dataview:** los paneles deben renderizar tablas sin mostrar bloques de código.
- **Tasks:** la consulta de tareas bloqueadas debe renderizarse.
- **Calendar:** debe leer fechas de notas locales.
- **Estilo:** el snippet `herc-folder-colors` debe estar activo.

## Si algo falla

1. Cierre y vuelva a abrir Obsidian.
2. Compruebe **Ajustes → Complementos de la comunidad**.
3. Confirme que Dataview, Tasks, QuickAdd, Calendar, Full Calendar y Templater estén habilitados.
4. Revise la guía específica:
   - [[PLUGIN_SETUP]]
   - [[QUICKADD_SETUP]]
   - [[OBSIDIAN_DAILY_NOTES_SETUP]]
   - [[HOMEPAGE_SETUP]]
   - [[GRAPH_VIEW_SETUP]]
   - [[BASES_SETUP]]
   - [[GOOGLE_CALENDAR_INTEGRATION]]
5. No modifique JSON manualmente para resolver un problema local; registre el error y consulte al responsable del vault.

## Validación por terminal

Desde la raíz del proyecto, ejecute:

```powershell
powershell -ExecutionPolicy Bypass -File "13_SOFTWARE/scripts/validate_workspace.ps1"
```

El script comprueba JSON, enlaces internos, tablas, bloques de código, frontmatter, plantillas, ejemplos y archivos vacíos.

## Reaplicar QuickAdd y Templater en otra computadora

Los `data.json` de complementos están ignorados por Git para evitar que se publiquen credenciales. Para instalar el perfil sanitizado:

1. Cierre Obsidian.
2. Desde la raíz, ejecute:

```powershell
powershell -ExecutionPolicy Bypass -File "13_SOFTWARE/scripts/configure_obsidian_beta.ps1" -Apply
```

3. Abra Obsidian.
4. Compruebe QuickAdd y Templater con la lista de aceptación.

El script crea un respaldo fechado antes de reemplazar la configuración local. No contiene claves de API ni habilita comandos del sistema.

## Configuración técnica preservada

- QuickAdd tiene diez acciones de creación/captura y no usa servicios en línea.
- Templater apunta a `12_TEMPLATES/` y no ejecuta comandos del sistema.
- Notas diarias usan `YYYY-MM-DD`.
- Las plantillas del complemento nativo apuntan a `12_TEMPLATES/`.
- Homepage no es obligatorio y actualmente no está instalado.
- Las claves de API permanecen vacías.
