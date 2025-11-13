Feature: Registro de nuevo estudiante
  Como estudiante,
  quiero registrarme fácilmente con mi correo electrónico o redes sociales,
  para acceder rápidamente a la aplicación y comenzar a usar sus servicios sin complicaciones,
  garantizando seguridad, validación de datos y cumplimiento con políticas de privacidad.

  Scenario: Registro mediante correo electrónico
    Given que la persona abre la aplicación por primera vez en su dispositivo
    And selecciona la opción "Registrarse"
    When completa los campos de nombre, correo electrónico, número de celular y contraseña
    And confirma el registro mediante un código de verificación enviado por SMS
    Then el sistema crea la cuenta correctamente
    And autentica al usuario
    And envía un correo de confirmación para validar la cuenta

  Scenario: Registro mediante redes sociales
    Given que el usuario elige la opción "Continuar con Google" o "Continuar con Facebook"
    When autoriza el acceso a su cuenta desde la ventana emergente de autenticación
    Then el sistema crea su cuenta automáticamente con los datos básicos (nombre, correo, foto de perfil)
    And redirige al usuario a la pantalla principal ya autenticado