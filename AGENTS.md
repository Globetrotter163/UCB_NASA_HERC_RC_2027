# AGENTS.md — NASA HERC RC 2027

Estas reglas aplican a Codex y a cualquier agente IA que opere dentro de este workspace.

## Límites globales

- La raíz del proyecto también es el vault de Obsidian.
- `.obsidian/` es configuración viva. No modificarla sin autorización explícita.
- No borrar, mover, renombrar ni sobrescribir archivos existentes sin aprobación.
- No instalar plugins, paquetes o dependencias sin autorización.
- No incluir credenciales, tokens, contraseñas, claves API, certificados ni secretos.
- No inventar datos, resultados, citas, aprobaciones, fechas o evidencia.
- Discord es coordinación solamente; no es fuente de verdad.

## Flujo de agentes

1. Leer el contexto y las fuentes oficiales pertinentes.
2. Crear el output inicial en `17_AI_AGENTS/03_AGENT_OUTPUTS/`.
3. Marcar supuestos, incertidumbre, fuentes y enlaces internos.
4. Solicitar revisión humana.
5. Solo una persona autorizada puede integrar el contenido en una fuente oficial.

Los outputs de agentes no son documentación oficial. Los agentes no aprueban decisiones técnicas ni marcan entregables como enviados.

## Fuentes oficiales

- Decisiones: `02_Systems_Engineering/Decision_Log.md`.
- Interfaces: `02_Systems_Engineering/Interface_Control_Document.md`.
- Riesgos técnicos: `02_Systems_Engineering/Risk_Register.md`.
- Peligros de seguridad: `08_SAFETY_QUALITY/Hazard_Log.md`.
- Planes y resultados de prueba: `07_TESTING_VALIDATION/`.
- Datos y evidencia de prueba: `16_TEST_DATA/`.
- Código y configuración: `13_SOFTWARE/`.
- Fuentes LaTeX: `14_LATEX_REPORTS/`.
- CAD pesado: Google Drive, indexado en `15_CAD_DRIVE_LINKS/`.
- Entregables congelados: `18_DELIVERABLES/`.

## Reglas de ingeniería

- Toda prueba debe enlazar al menos un requisito o declarar por qué no aplica.
- Toda interfaz debe tener owner de cada lado y criterio de verificación.
- Toda decisión debe indicar evidencia, opciones e impacto.
- Todo riesgo debe tener owner, mitigación o justificación explícita.
- Todo cambio entre áreas debe pasar por ICD, Decision Log o ambos.
- Mantener IDs: `REQ-000`, `ICD-000`, `DEC-000`, `RSK-000`, `TST-000`, `FR-000`, `CHG-000`, `DOC-000`, `PRC-000`, `MTG-000`, `AGT-000`.

## Trazabilidad de cambios

Antes de cambiar estructura o ubicación, registrar propuesta en `00_PROJECT_CONTROL/MIGRATION_PLAN.md`. Documentar cambios ejecutados en `MIGRATION_LOG.md`. Preservar siempre los cambios preexistentes del usuario y no realizar commits automáticamente.
