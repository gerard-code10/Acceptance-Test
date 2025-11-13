Feature: Invitar contactos a la app
  Como usuario, quiero recomendar la aplicación a mis contactos para que también puedan capacitarse en primeros auxilios,
  participar en simulaciones y obtener certificaciones, fomentando el aprendizaje colectivo y la expansión de la comunidad SafeStep.

  Scenario: Envío exitoso de invitación a través de redes o mensajería
    Given que el usuario accede a la opción “Invitar amigos” dentro de la aplicación
    And selecciona un canal de envío (WhatsApp, correo electrónico o SMS)
    When presiona “Enviar invitación”
    Then el sistema genera un mensaje con un enlace de registro personalizado y lo comparte por el medio seleccionado
    And muestra una confirmación de que la invitación fue enviada correctamente

  Scenario: Seguimiento de invitaciones enviadas
    Given que el usuario ha enviado varias invitaciones desde la app
    When accede a la sección “Historial de invitaciones”
    Then el sistema muestra un listado con las invitaciones enviadas, el canal utilizado y el estado (pendiente, aceptada o sin respuesta)
    And actualiza automáticamente cuando uno de los contactos se registra en la plataforma mediante el enlace compartido
