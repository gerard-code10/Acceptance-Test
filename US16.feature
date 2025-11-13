Feature: Sistema de puntos
  Como usuario, quiero ganar puntos por cada simulación completada para motivarme y reconocer mi progreso.

  Scenario: Sumar puntos por simulación completada
    Given que el usuario finaliza una simulación
    When el sistema evalúa precisión y tiempo
    Then suma los puntos al perfil del usuario
    And muestra un mensaje de retroalimentación positiva

  Scenario: Actualizar historial y ranking
    Given que el usuario completó varias simulaciones
    When accede al perfil o ranking
    Then muestra el total de puntos acumulados
    And actualiza la posición en el ranking
    And permite ver detalles por actividad
