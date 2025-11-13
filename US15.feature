Feature: Evaluación final por módulo
  Como estudiante, quiero rendir una evaluación final por módulo para validar mi aprendizaje.

  Scenario: Realizar evaluación final
    Given que el usuario completó todas las simulaciones del módulo
    When selecciona "Evaluación final"
    Then inicia la prueba con preguntas y escenarios interactivos
    And registra las respuestas para generar calificación

  Scenario: Mostrar calificación y feedback
    Given que el usuario terminó la evaluación
    When el sistema procesa los resultados
    Then muestra la calificación
    And indica respuestas correctas e incorrectas
    And ofrece sugerencias de mejora

  Scenario: Acceder al certificado
    Given que el usuario aprobó la evaluación
    When selecciona "Ver certificado"
    Then genera un certificado digital con nombre, fecha y nivel
    And permite descargarlo o compartirlo
