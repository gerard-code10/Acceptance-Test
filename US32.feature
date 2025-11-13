Feature: Revalidación de certificados
  Como usuario, quiero renovar mis certificados vencidos para mantener mis conocimientos actualizados 
  y contar con documentación vigente que respalde mis competencias en primeros auxilios.

  Scenario: Renovación por caducidad detectada
    Given que el usuario tiene un certificado con más de un año de antigüedad
    And el sistema ha detectado que su vigencia ha expirado
    When el usuario selecciona "Renovar certificado" en su historial
    Then el sistema habilita la evaluación de actualización
    And muestra un mensaje con los pasos para renovar la certificación

  Scenario: Generación del nuevo certificado
    Given que el usuario completó la evaluación de actualización
    And obtuvo una calificación aprobatoria
    When el sistema valida los resultados
    Then genera un nuevo certificado digital con fecha actualizada y código único
    And reemplaza el certificado vencido en el historial del usuario
