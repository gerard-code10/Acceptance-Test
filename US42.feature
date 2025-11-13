Feature: Eventos comunitarios
  Como organizador, quiero crear eventos o retos virtuales para que mi comunidad participe activamente.

  Scenario: Creación y publicación de evento online
    Given que el usuario tiene permisos de organizador
    And ha definido la fecha, hora, título, descripción y objetivo del evento
    When publica la información en la sección “Eventos SafeStep”
    Then la aplicación registra el evento en el calendario general
    And notifica automáticamente a todos los miembros de la comunidad
    And habilita el botón “Inscribirse” en la vista del evento

  Scenario: Participación y gestión del evento publicado
    Given que el evento ha sido publicado y los usuarios interesados se han inscrito
    When el organizador inicia la sesión en línea en la fecha programada
    Then la aplicación habilita la sala virtual o el enlace de reunión
    And permite a los participantes ingresar con su usuario registrado
    And registra la asistencia y muestra un resumen al finalizar el evento
