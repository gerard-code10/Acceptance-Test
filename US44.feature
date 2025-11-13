Feature: Ranking comunitario vecinal
  Como miembro de la comunidad, quiero visualizar un ranking grupal que refleje el desempeño colectivo de las comunidades vecinales registradas,
  para fomentar la competencia saludable, el aprendizaje colaborativo y la mejora continua en la preparación ante emergencias.

  Scenario: Visualización general del ranking entre comunidades
    Given que existen varias comunidades vecinales activas registradas en la aplicación
    And cada una acumula puntos mediante actividades completadas
    When un usuario accede a la sección “Ranking de comunidades”
    Then el sistema muestra una tabla comparativa con las posiciones ordenadas según el puntaje total
    And resalta la comunidad del usuario con un color o ícono distintivo

  Scenario: Filtrar ranking por tipo de actividad o período de tiempo
    Given que el usuario desea analizar el desempeño grupal según criterios específicos
    When aplica filtros por tipo de actividad (simulaciones, eventos, evaluaciones) o por período (semanal, mensual, anual)
    Then el sistema actualiza el ranking mostrando solo las comunidades que cumplan con esos parámetros
    And recalcula los puntajes y posiciones de acuerdo con el filtro seleccionado
