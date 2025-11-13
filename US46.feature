Feature: Registro de brigadistas
  Como brigadista, quiero registrarme con un perfil especial dentro de la aplicación para poder gestionar cursos,
  monitorear alumnos y participar como formador o evaluador en las simulaciones,
  asegurando que mi perfil esté verificado y respaldado por documentación válida.

  Scenario: Registro de nuevo brigadista con documentación válida
    Given que el usuario selecciona la opción “Registrarse como brigadista” en la aplicación
    And proporciona su información profesional y los documentos requeridos
    When completa el formulario y envía la solicitud
    Then el sistema registra su perfil en estado “Pendiente de verificación”
    And notifica a los administradores para revisar y validar los documentos presentados

  Scenario: Verificación y activación del perfil del brigadista
    Given que el administrador ha revisado los documentos y comprobado su validez
    When aprueba la solicitud de registro
    Then el sistema actualiza el perfil del usuario a “Brigadista verificado”
    And habilita las funciones avanzadas de gestión de cursos y alumnos
    And muestra un mensaje de bienvenida al nuevo brigadista
