Feature: Creación de cursos
  Como brigadista, quiero crear cursos digitales para capacitar a mi comunidad.

  Scenario: Publicación de un curso nuevo
    Given que el instructor accede al panel de creación
    And define el nombre, contenido y objetivos del curso
    When publica el curso
    Then el sistema lo guarda en el catálogo
    And permite a los usuarios inscribirse

  Scenario: El instructor guarda un curso en borrador
    Given que el curso aún no está listo para publicarse
    And que el instructor desea continuar editándolo después
    When selecciona “Guardar borrador”
    Then el sistema debe conservar toda la información sin publicarlo
    And mantenerlo disponible para su edición futura
