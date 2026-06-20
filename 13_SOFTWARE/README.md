# Repositorio de software

Código fuente, firmware, control, telemetría, scripts, pruebas y configuración del rover.

## Estructura

- `firmware/`: controladores Pico y computadora principal.
- `control/`: motor, dirección y ajuste.
- `telemetry/`: registrador, panel y sensores.
- `scripts/`: herramientas reproducibles.
- `tests/`: pruebas unitarias, de integración y hardware en el bucle.
- `config/`: mapa de pines, ID CAN, calibración y parámetros.

## Reglas

- No almacene secretos ni rutas locales de una computadora.
- Los cambios de configuración deben enlazar un ICD o decisión y pruebas.
- Las versiones se asocian a `02_Systems_Engineering/Configuration_Baseline.md`.
- Los archivos generados pertenecen a carpetas ignoradas de compilación o salida.
