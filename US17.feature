Feature: Insignias por logros
  Como usuario, quiero desbloquear insignias al cumplir metas para visualizar mi progreso y mantenerme motivado.

  Scenario: Desbloqueo automático de insignia
    Given que el usuario completa una meta (por ejemplo, 5 simulaciones o 1000 puntos)
    When el sistema valida el logro
    Then otorga automáticamente la insignia
    And muestra una notificación de felicitación

  Scenario: Visualización de insignias en el perfil
    Given que el usuario tiene varias insignias desbloqueadas
    When accede a "Mi perfil / Mis logros"
    Then muestra todas las insignias de forma visual y ordenada
    And permite ver detalles de cada insignia
    And destaca las próximas por desbloquear
