Feature: Respaldo institucional de contenidos
  Como brigadista, quiero validar que los contenidos de la app sean confiables
  para asegurar que las capacitaciones en mi comunidad sean seguras, precisas y alineadas con protocolos oficiales.

  Scenario: Validación exitosa de un módulo
    Given que el brigadista tiene un perfil verificado y accede al panel de revisión
    And selecciona un módulo de primeros auxilios pendiente de validación
    When revisa el contenido, marca los criterios de evaluación como “Aprobado” y confirma la validación
    Then el sistema asigna automáticamente el sello “Validado por brigadistas certificados” al módulo
    And actualiza la fecha y el nombre del revisor en el registro público del contenido

  Scenario: Rechazo de un módulo por contenido incorrecto
    Given que el brigadista revisa un módulo con información desactualizada o incorrecta
    When marca el criterio “No aprobado” y añade observaciones en el campo de comentarios
    Then el sistema notifica al equipo de contenido sobre la necesidad de corrección
    And el módulo permanece en estado de revisión hasta que las observaciones sean atendidas y se solicite una nueva validación
