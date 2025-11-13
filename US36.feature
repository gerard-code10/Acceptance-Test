Feature: Foro de usuarios
  Como usuario, quiero acceder a un foro de preguntas y respuestas para intercambiar experiencias y resolver dudas.

  Scenario: Publicación de una consulta en el foro
    Given que el usuario tiene un perfil activo en la aplicación
    And que el sistema dispone de un espacio habilitado para el foro
    When el usuario escribe su pregunta y la publica
    Then la aplicación debe mostrar la consulta en la lista del foro
    And permitir que otros usuarios la respondan

  Scenario: Responder a una pregunta publicada por otro miembro
    Given que la pregunta está activa en el foro
    And que el usuario cuenta con acceso al hilo de discusión
    When publica una respuesta
    Then la aplicación notifica al autor original
    And registra la interacción en el perfil del usuario
