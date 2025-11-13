Feature: Recompensas virtuales
  Como usuario, quiero recibir recompensas virtuales al alcanzar hitos para mantener mi motivación y reconocer mis avances.

  Scenario: Obtener recompensa al alcanzar un hito
    Given que el usuario completa una meta (ej. 10 simulaciones)
    When la app valida el logro
    Then entrega una recompensa digital en su perfil
    And muestra el mensaje “¡Felicidades! Has ganado la recompensa ‘Salvavidas en Acción’.”

  Scenario: Consultar recompensas obtenidas
    Given que el usuario accede a “Mis Recompensas”
    When revisa su lista
    Then la app muestra recompensas ganadas y pendientes
    And permite ver detalles como fecha y motivo
