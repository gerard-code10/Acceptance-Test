Feature: Grupo comunitario
  Como vecino, quiero crear un grupo comunitario para organizar capacitaciones locales 
  y fomentar la participación entre los miembros de mi comunidad.

  Scenario: Creación de grupo vecinal dentro de la app
    Given que el usuario está registrado y tiene la opción habilitada
    And define un nombre y descripción para el grupo
    When otros usuarios solicitan unirse
    Then el creador puede aceptarlos y el grupo queda activo para compartir simulaciones y logros

  Scenario: Límite de miembros alcanzado
    Given que el sistema define un número máximo de participantes
    And nuevos usuarios intentan unirse al grupo
    When el grupo alcanza su límite
    Then la aplicación notifica que el grupo está lleno
    And ofrece la opción de crear un nuevo grupo
