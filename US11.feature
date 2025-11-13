Feature: Feedback inmediato
  Como usuario, quiero recibir retroalimentación inmediata para comprender mis errores y mejorar mi desempeño.

  Scenario: Feedback positivo
    Given que el usuario realiza una acción correcta durante la simulación
    When la app evalúa la acción
    Then muestra un mensaje positivo y confirmación visual
    And permite continuar sin interrupciones

  Scenario: Feedback correctivo
    Given que el usuario realiza una acción incorrecta
    When la app detecta el error
    Then muestra un mensaje explicando por qué fue incorrecta
    And ofrece una breve guía o sugerencia de corrección
