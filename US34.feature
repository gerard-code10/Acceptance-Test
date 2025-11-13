Feature: Validación con código QR
  Como usuario certificado, quiero que mi certificado digital incluya un código QR único que permita 
  a cualquier persona o institución verificar su autenticidad, asegurando la validez y confiabilidad 
  de mi acreditación en primeros auxilios.

  Scenario: Validación exitosa de certificado activo
    Given que el certificado emitido incluye un código QR válido
    And que dicho código está registrado en la base de datos oficial
    When un tercero escanea el QR desde su dispositivo
    Then el sistema muestra una página de verificación con los datos del usuario, la especialidad certificada, 
    la fecha de emisión y el estado “Certificado válido”
    And ofrece la opción de descargar un comprobante o compartir el enlace de validación

  Scenario: Intento de validación de un certificado vencido o no registrado
    Given que una persona escanea el código QR de un certificado caducado o manipulado
    When el sistema consulta la base de datos
    Then muestra un mensaje indicando “Certificado no válido o expirado”
    And ofrece información sobre la fecha de vencimiento o los pasos para verificar nuevamente con el emisor oficial
