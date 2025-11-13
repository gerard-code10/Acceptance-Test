Feature: Retroalimentación de examen
  Como usuario, quiero recibir una retroalimentación detallada después del examen 
  para identificar mis errores y mejorar mi desempeño.

  Scenario: Mostrar retroalimentación del examen
    Given que el examen ya ha sido calificado automáticamente por el sistema
    And que se tiene registrado el detalle de sus respuestas
    When el usuario abre el informe de resultados
    Then el sistema muestra sus aciertos, errores, explicación de las respuestas correctas y sugerencias para mejorar

  Scenario: Visualizar certificado sin conexión
    Given que el sistema cuenta con una opción de descarga previa o almacenamiento local
    And que el usuario ya aprobó la evaluación
    When abre la aplicación sin conexión a internet
    Then el usuario puede visualizar o descargar el certificado almacenado sin conexión activa
