Feature: Ranking entre usuarios
  Como usuario, quiero ver mi posición en el ranking para compararme y motivarme a mejorar.

  Scenario: Consultar ranking global
    Given que existen usuarios con puntajes registrados
    When accede a la sección "Ranking Global"
    Then la aplicación muestra los mejores puntajes
    And destaca la posición actual del usuario

  Scenario: Filtrar ranking por periodo
    Given que el usuario desea ver su progreso reciente
    When selecciona "Ranking semanal" o "Ranking mensual"
    Then el sistema actualiza los resultados según el filtro
    And recalcula la posición del usuario
