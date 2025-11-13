Feature: Recomendaciones personalizadas
  Como usuario, quiero recibir sugerencias de temas en los que fallé durante las simulaciones para reforzar mi aprendizaje y mejorar mis conocimientos en primeros auxilios.

  Scenario: Generar recomendaciones automáticas
    Given que el usuario completa una simulación con errores o baja puntuación
    When el sistema analiza su desempeño
    Then genera una lista de módulos o simulaciones de refuerzo relacionados
    And muestra en pantalla botones de acceso directo a esos contenidos

  Scenario: Actualizar recomendaciones dinámicamente
    Given que el usuario ha completado simulaciones y módulos de refuerzo
    When el sistema detecta mejoras en los temas previamente fallados
    Then actualiza la sección "Mis Recomendaciones"
    And reemplaza los temas superados por nuevos contenidos complementarios
