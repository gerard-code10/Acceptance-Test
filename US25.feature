Feature: Eventos comunitarios
  Como usuario, quiero participar en eventos para competir, mejorar mis habilidades y obtener reconocimiento.

  Scenario: Inscripción y participación exitosa
    Given que hay un evento activo y el usuario cumple los requisitos
    When se inscribe y completa las actividades
    Then el sistema confirma la inscripción
    And registra puntaje y actualiza su posición en el ranking

  Scenario: Evento cerrado o sin cupos
    Given que el usuario intenta unirse a un evento cerrado
    When selecciona el evento
    Then el sistema muestra mensaje de inscripción cerrada
    And ofrece ver resultados o activar recordatorio
