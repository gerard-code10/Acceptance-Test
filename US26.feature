Feature: Evaluación práctica en simulación
  Como usuario avanzado, quiero realizar una evaluación práctica de RCP para comprobar mis conocimientos y recibir retroalimentación.

  Scenario: Evaluación completada exitosamente
    Given que el usuario completó todas las lecciones de RCP
    When inicia la evaluación y ejecuta correctamente las maniobras
    Then el sistema registra las acciones y calcula el puntaje
    And muestra calificación final y observaciones

  Scenario: Evaluación con errores
    Given que el usuario inicia la evaluación práctica
    When comete errores en la secuencia o tiempo
    Then el sistema genera reporte de desempeño
    And recomienda módulos de repaso antes del reintento
