Feature: Recuperar contraseña
  Como usuario,
  quiero poder recuperar mi contraseña olvidada de forma rápida y segura,
  para no perder acceso a mi cuenta y continuar utilizando la aplicación sin necesidad de crear un nuevo registro.

  Scenario: Recuperación de contraseña mediante correo electrónico
    Given que el usuario se encuentra en la pantalla de inicio de sesión
    When pulsa la opción "¿Olvidaste tu contraseña?" e ingresa su correo electrónico
    Then la aplicación envía un enlace de restablecimiento al correo ingresado
    And al acceder a dicho enlace, el usuario puede establecer una nueva contraseña válida para recuperar su acceso

  Scenario: Recuperación de contraseña mediante número de celular
    Given que el usuario se encuentra en la pantalla de inicio de sesión
    And registró un número de celular previamente
    When pulsa la opción "¿Olvidaste tu contraseña?" e ingresa su número asociado
    Then la aplicación envía un código o enlace de restablecimiento mediante SMS
    And al usarlo, el usuario puede definir una nueva contraseña y recuperar su cuenta de manera segura
