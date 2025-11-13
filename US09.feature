Feature: Escenario de sismos
  Como usuario, quiero practicar cómo actuar durante un sismo para reaccionar de forma segura.

  Scenario: Durante el sismo
    Given que el usuario inicia la simulación "Sismo"
    When el sistema simula el movimiento sísmico
    Then el usuario elige acciones de protección
    And la app evalúa las decisiones y muestra mensajes de seguridad

  Scenario: Después del sismo
    Given que el usuario completa la simulación
    When el sistema presenta opciones de evacuación y revisión del entorno
    Then la app evalúa las decisiones tomadas
    And muestra una puntuación y recomendaciones de mejora
