Feature: Ranking de certificaciones
  Como usuario competitivo, quiero aparecer en un ranking general para comparar mi desempeño 
  con el de otros usuarios y motivarme a mejorar mi posición dentro de la comunidad.

  Scenario: Visualizar posición en el ranking general
    Given que existen varios usuarios con puntajes registrados en distintas evaluaciones
    And el sistema ha calculado las posiciones en el ranking
    When el usuario accede a la sección “Ranking general”
    Then el sistema muestra un listado ordenado de mayor a menor puntaje
    And resalta la posición del usuario actual con su nombre, nivel y puntaje total

  Scenario: Filtrar ranking por categoría o curso
    Given que el usuario desea conocer su posición dentro de una categoría específica
    When aplica un filtro de categoría en la vista de ranking
    Then el sistema actualiza la lista mostrando solo los usuarios que pertenecen a esa categoría
    And mantiene destacada la posición del usuario en ese ranking filtrado
