# Estado de ingeniería

Actualice las puntuaciones desde evidencia en notas `daily_status`; esta página no aprueba el estado técnico.

```dataview
TABLE WITHOUT ID
  date AS "Fecha",
  mechanical_score AS "Mecánica",
  electrical_score AS "Eléctrica",
  software_score AS "SW",
  payload_score AS "Carga",
  testing_score AS "Pruebas",
  safety_score AS "Seguridad",
  owner AS "Responsable"
FROM "00_PROJECT_CONTROL/DAILY_STATUS"
WHERE type = "daily_status" AND status != "example"
SORT date DESC
LIMIT 14
```

## Respaldo manual

| Área          | Puntuación actual | Evidencia | Responsable | Próxima revisión |
| ------------- | -----------: | --------- | ----- | ---------------- |
| Mecánica      | Por definir | Por definir | Por definir | Por definir |
| Eléctrica     | Por definir | Por definir | Por definir | Por definir |
| Software      | Por definir | Por definir | Por definir | Por definir |
| Cargas        | Por definir | Por definir | Por definir | Por definir |
| Pruebas       | Por definir | Por definir | Por definir | Por definir |
| Documentación | Por definir | Por definir | Por definir | Por definir |
| Seguridad     | Por definir | Por definir | Por definir | Por definir |
