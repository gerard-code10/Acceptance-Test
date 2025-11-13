Feature: Notificaciones de interacción
  Como usuario, quiero recibir notificaciones cuando alguien responda a mis publicaciones o me invite a un evento, 
  para mantenerme informado y no perderme ninguna actividad o interacción importante dentro de la comunidad SafeStep.

  Scenario: Notificación por respuesta en una publicación
    Given que el usuario tiene activadas las notificaciones
    And que otro miembro de la comunidad responde a una publicación o comentario suyo
    When se registra la interacción
    Then la aplicación muestra una alerta dentro de la app con el mensaje “Alguien respondió a tu publicación”
    And si el usuario tiene la opción activada, también recibe un correo con el enlace directo al contenido

  Scenario: Notificación por invitación a un evento
    Given que el usuario fue agregado a un evento comunitario por otro miembro o administrador
    And que tiene habilitadas las notificaciones
    When se crea o actualiza la invitación
    Then la aplicación envía una alerta en la app con los detalles del evento (título, fecha, hora, ubicación o enlace)
    And si está configurado, también envía un correo recordatorio con la opción de confirmar su asistencia
