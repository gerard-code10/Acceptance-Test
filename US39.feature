Feature: Compartir logros en redes
  Como usuario activo, quiero compartir mis logros en redes sociales o por correo electrónico, 
  para mostrar mi progreso en primeros auxilios y motivar a mis contactos a unirse a la plataforma.

  Scenario: Compartir logro desbloqueado en redes sociales
    Given que el usuario ha completado un reto y desbloqueado un logro
    And el sistema generó un mensaje con imagen y enlace a la plataforma
    When el usuario selecciona la opción “Compartir en redes”
    Then la aplicación muestra las opciones disponibles (Facebook, LinkedIn, Instagram, WhatsApp)
    And permite publicar el logro con el enlace a la plataforma

  Scenario: Envío del logro por correo electrónico
    Given que el usuario desea compartir su logro con un contacto o institución
    When selecciona “Compartir por correo” e ingresa una dirección válida
    Then el sistema adjunta una imagen del logro con un enlace de invitación
    And confirma el envío exitoso con una notificación visible
