Feature: Chat de ayuda en vivo
  Como usuario, quiero acceder a un chat en vivo para resolver dudas rápidas sobre primeros auxilios.

  Scenario: Asistencia inmediata en el chat
    Given que el chat está disponible en la aplicación
    And que hay al menos un moderador o asistente conectado
    When el usuario abre el chat y envía su consulta
    Then el sistema entrega una respuesta en tiempo real o indica un tiempo estimado de atención

  Scenario: Chat sin moderadores disponibles
    Given que el chat está activo pero no hay asistentes conectados
    And que el usuario necesita orientación
    When envía su mensaje
    Then la aplicación genera una respuesta automática con enlaces de ayuda
    And permite dejar la consulta pendiente para ser atendida posteriormente
