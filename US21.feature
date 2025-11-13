Feature: Niveles de dificultad
  Como usuario, quiero desbloquear niveles avanzados para acceder a simulaciones más desafiantes y seguir mejorando.

  Scenario: Desbloquear nivel avanzado
    Given que el usuario completó los niveles básicos
    When alcanza el puntaje requerido
    Then se habilita el nivel avanzado
    And se muestra el mensaje “¡Excelente! Has desbloqueado el nivel avanzado.”

  Scenario: Intentar acceder a nivel bloqueado
    Given que el usuario no cumple los requisitos
    When intenta abrir un escenario avanzado
    Then el sistema muestra “Nivel bloqueado. Completa el básico para continuar.”
    And ofrece un acceso directo a las simulaciones pendientes
