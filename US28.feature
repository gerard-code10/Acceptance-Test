Feature: Certificado digital
  Como usuario, quiero recibir un certificado digital al aprobar el examen final 
  para tener constancia formal de mis conocimientos en primeros auxilios 
  y poder presentarlo como respaldo académico o profesional.

  Scenario: Generación exitosa del certificado
    Given que el usuario ha completado todas las simulaciones y aprobado el examen final
    And su identidad está validada en el sistema
    When solicita el certificado desde su perfil
    Then el sistema genera un documento PDF con nombre, curso, fecha y código único de validación
    And permite su descarga inmediata o envío al correo electrónico del usuario

  Scenario: Error en la generación del certificado
    Given que el usuario intenta descargar su certificado después de aprobar el examen
    When ocurre un error en el servidor o en la validación de datos
    Then el sistema muestra un mensaje informativo "Error al generar el certificado, por favor intente nuevamente"
    And ofrece la opción de reintentar la descarga o contactar soporte técnico
