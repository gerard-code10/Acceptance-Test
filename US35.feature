Feature: Compartir certificado
  Como usuario, quiero poder compartir mi certificado digital en redes sociales o por correo electrónico,
  para mostrar mis logros y validaciones de aprendizaje en primeros auxilios, aumentando mi visibilidad profesional
  y motivando a otros a capacitarse.

  Scenario: Compartir certificado mediante redes sociales
    Given que el usuario aprobó un curso y su certificado digital se encuentra disponible en su perfil
    And que el sistema ofrece la opción “Compartir”
    When el usuario selecciona una red social como LinkedIn o WhatsApp
    Then el sistema genera un enlace seguro con vista previa del certificado
    And permite publicar o enviar el mensaje junto con la validación oficial del documento

  Scenario: Envío de certificado por correo electrónico
    Given que el usuario desea enviar su certificado a un contacto o institución
    When selecciona la opción “Compartir por correo” e ingresa la dirección del destinatario
    Then el sistema adjunta el certificado en formato PDF con código QR y enlace de validación
    And envía el mensaje automáticamente mostrando una confirmación de envío exitoso
