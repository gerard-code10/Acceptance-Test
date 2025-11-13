Feature: Notificaciones motivacionales
  Como usuario, quiero recibir recordatorios motivadores tras varios días de inactividad para mantener mi aprendizaje activo.

  Scenario: Envío de recordatorio por inactividad
    Given que el usuario lleva más de 5 días sin iniciar sesión
    When el sistema detecta la inactividad
    Then envía una notificación motivadora
    And redirige a la última simulación pendiente al hacer clic

  Scenario: Configurar preferencias de notificación
    Given que el usuario accede a “Configuración → Notificaciones”
    When activa o desactiva los recordatorios
    Then el sistema guarda la preferencia
    And muestra el mensaje “Tus preferencias han sido guardadas correctamente”
