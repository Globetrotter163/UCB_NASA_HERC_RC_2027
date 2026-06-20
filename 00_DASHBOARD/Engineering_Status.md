# Engineering Status

Actualice scores desde evidencia en notas `daily_status`; esta página no aprueba estado técnico.

```dataview
TABLE WITHOUT ID
  date AS "Date",
  mechanical_score AS "Mech",
  electrical_score AS "Elec",
  software_score AS "SW",
  payload_score AS "Payload",
  testing_score AS "Test",
  safety_score AS "Safety",
  owner AS "Owner"
FROM "00_PROJECT_CONTROL/DAILY_STATUS"
WHERE type = "daily_status" AND status != "example"
SORT date DESC
LIMIT 14
```

## Fallback manual

| Área | Score actual | Evidencia | Owner | Próxima revisión |
|---|---:|---|---|---|
| Mechanical | TBD | TBD | TBD | TBD |
| Electrical | TBD | TBD | TBD | TBD |
| Software | TBD | TBD | TBD | TBD |
| Payloads | TBD | TBD | TBD | TBD |
| Testing | TBD | TBD | TBD | TBD |
| Documentation | TBD | TBD | TBD | TBD |
| Safety | TBD | TBD | TBD | TBD |
