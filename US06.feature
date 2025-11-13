Feature: Escenario de RCP básico
  Como estudiante,
  quiero practicar un escenario de RCP
  para aprender a reaccionar ante un paro cardiorrespiratorio.

  Scenario: Practicar RCP básico
    Given que el usuario selecciona "RCP básico" en el catálogo de escenarios
    When inicia la simulación y realiza las acciones indicadas (compresiones, frecuencia, etc.)
    Then la app evalúa cada paso y muestra feedback inmediato
    And entrega una puntuación final y recomendaciones de mejora
