Feature: Uso offline
  Como usuario,
  quiero poder acceder y ejecutar simulaciones previamente descargadas sin necesidad de conexión a internet,
  para continuar mis prácticas de primeros auxilios en cualquier momento y lugar,
  asegurando que mi progreso se guarde y se sincronice automáticamente cuando vuelva a estar en línea.

  Scenario: Ejecución de simulaciones en modo offline
    Given que el usuario ha descargado una simulación de primeros auxilios con antelación
    And su dispositivo no cuenta con conexión a internet
    When accede a la sección de simulaciones y selecciona el escenario descargado
    Then la aplicación ejecuta el contenido en modo offline
    And permite al usuario completar todas las etapas de la práctica sin interrupciones

  Scenario: Sincronización de resultados tras reconexión
    Given que el usuario ha completado una simulación en modo offline
    When el dispositivo recupera conexión a internet
    Then el sistema sincroniza automáticamente los resultados y avances almacenados localmente
    And actualiza el historial del usuario en el servidor sin pérdida de información
