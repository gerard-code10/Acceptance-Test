Feature: Reportes de desempeño de alumnos
  Como instructor, quiero acceder a reportes detallados del desempeño de mis estudiantes
  para evaluar su progreso, identificar áreas de mejora y adaptar las capacitaciones
  según los resultados obtenidos.

  Scenario: Consulta general de desempeño de estudiantes
    Given que varios estudiantes han completado simulaciones y evaluaciones
    And sus resultados están almacenados en el sistema
    When el instructor accede a la sección “Reportes de desempeño”
    Then la aplicación muestra un tablero con métricas generales:
      | promedio de notas | aciertos más comunes | errores frecuentes | progreso general del grupo |
    And permite aplicar filtros por curso o fecha

  Scenario: Análisis individual de un estudiante específico
    Given que el instructor necesita revisar el progreso de un alumno en particular
    When selecciona el nombre del estudiante desde la lista
    Then el sistema despliega un informe detallado con su historial de simulaciones,
    calificaciones obtenidas, áreas de mayor dificultad y evolución a lo largo del tiempo
    And permite descargar el reporte o compartirlo con el propio estudiante para retroalimentación
