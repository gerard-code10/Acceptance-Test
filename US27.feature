Feature: Examen final del módulo
  Como estudiante, quiero rendir un examen final al terminar un módulo para certificar lo aprendido.

  Scenario: Examen aprobado exitosamente
    Given que el estudiante completó todas las simulaciones del módulo
    And el examen está disponible
    When solicita rendirlo
    Then el sistema genera preguntas teóricas y prácticas
    And muestra la nota y resultado final

  Scenario: Reintento de examen
    Given que el usuario no aprobó en el primer intento
    And revisa las recomendaciones del sistema
    When inicia un nuevo examen
    Then se generan nuevas preguntas
    And se registra el nuevo resultado sin borrar el anterior
