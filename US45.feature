Feature: Encuestas de satisfacción comunitaria
  Como vecino, quiero poder lanzar encuestas dentro de la aplicación para conocer la opinión y nivel de preparación de los usuarios sobre temas de primeros auxilios o actividades comunitarias,
  de modo que se puedan tomar decisiones informadas y fomentar la participación colectiva.

  Scenario: Creación y publicación de una nueva encuesta
    Given que el administrador o vecino autorizado accede a la sección “Encuestas comunitarias”
    And completa los campos de título, descripción, preguntas y opciones de respuesta
    When guarda y publica la encuesta
    Then el sistema la activa inmediatamente
    And notifica a los usuarios para que participen antes de la fecha de cierre establecida

  Scenario: Registro y análisis de respuestas
    Given que varios usuarios han recibido la notificación y completado la encuesta
    When el período de participación finaliza
    Then el sistema consolida las respuestas y genera un informe con resultados gráficos y porcentuales
    And permite al administrador visualizar o descargar el reporte desde el panel de gestión
