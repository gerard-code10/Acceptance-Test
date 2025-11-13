Feature: Retos semanales
  Como usuario, quiero participar en retos semanales para mantenerme activo y motivado.

  Scenario: Visualizar reto semanal activo
    Given que hay un nuevo reto semanal publicado
    When el usuario entra a "Reto de la semana"
    Then se muestra el título, descripción, dificultad y fecha límite
    And puede aceptar el desafío para comenzar

  Scenario: Completar tareas del reto
    Given que el usuario aceptó el reto
    When realiza las simulaciones asignadas
    Then el sistema registra su progreso
    And otorga puntos extra y muestra el avance

  Scenario: Obtener recompensas por reto completado
    Given que el usuario completó el reto semanal
    When el sistema valida el cumplimiento
    Then muestra un mensaje de felicitación
    And entrega una medalla digital y actualiza el ranking
