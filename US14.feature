Feature: Micro-lecciones de refuerzo
  Como usuario, quiero recibir micro-lecciones diarias para mantener mis conocimientos de primeros auxilios actualizados.

  Scenario: Mostrar micro-lección diaria
    Given que el usuario no ha practicado por varios días
    When abre la aplicación
    Then el sistema muestra una micro-lección breve y permite completarla o posponerla

  Scenario: Registrar micro-lección completada
    Given que el usuario termina la micro-lección
    When marca como finalizada
    Then el sistema guarda la fecha y muestra un mensaje de progreso
