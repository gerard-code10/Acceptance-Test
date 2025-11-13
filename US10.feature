Feature: Escenario de cortes y hemorragias
  Como usuario, quiero aprender a detener una hemorragia para actuar correctamente en una emergencia.

  Scenario: Control básico
    Given que el usuario inicia la simulación "Cortes y hemorragias"
    When aplica presión directa y eleva la zona afectada
    Then la app evalúa sus acciones
    And muestra retroalimentación visual y textual

  Scenario: Corrección de errores
    Given que el usuario realiza una acción incorrecta
    When la app detecta el error
    Then pausa la simulación
    And muestra una guía rápida para corregirla

  Scenario: Resultados finales
    Given que el usuario completa la simulación
    When el sistema evalúa su desempeño
    Then muestra la puntuación, recomendaciones y opción de reintentar
