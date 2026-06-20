# Software Repository

Código fuente, firmware, control, telemetría, scripts, tests y configuración del rover.

## Layout

- `firmware/`: controladores Pico y computadora principal.
- `control/`: motor, steering y tuning.
- `telemetry/`: logger, dashboard y sensores.
- `scripts/`: herramientas reproducibles.
- `tests/`: unit, integration y hardware-in-the-loop.
- `config/`: pinout, CAN IDs, calibración y parámetros.

## Rules

- No secrets or machine-local paths.
- Configuration changes must link an ICD/decision and tests.
- Releases map to `02_Systems_Engineering/Configuration_Baseline.md`.
- Generated files belong in ignored build/output folders.
