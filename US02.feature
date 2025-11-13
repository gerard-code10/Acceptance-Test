Feature: Inicio de sesión de usuario
  Como usuario registrado,
  quiero iniciar sesión de forma rápida y segura
  para acceder a mis cursos y continuar mi progreso sin complicaciones,
  garantizando la protección de mis datos y una experiencia fluida al ingresar al sistema.

  Scenario: Inicio de sesión exitoso
    Given que el usuario ya tiene una cuenta creada en la plataforma
    When ingresa su correo electrónico y contraseña válidos
    And pulsa el botón "Iniciar sesión"
    Then el sistema valida sus credenciales
    And crea un token o sesión activa
    And redirige al usuario a su dashboard o pantalla principal mostrando su información personalizada

  Scenario: Intento de inicio de sesión con datos incorrectos
    Given que el usuario intenta iniciar sesión con una cuenta existente
    When introduce un correo o contraseña incorrectos
    Then el sistema rechaza la autenticación
    And muestra un mensaje claro y conciso indicando el error "Correo o contraseña incorrectos"
    And ofrece la opción "¿Olvidaste tu contraseña?" para recuperar el acceso
