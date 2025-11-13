Feature: Historial de evaluaciones
  Como usuario, quiero acceder a mi historial de evaluaciones y certificados desde mi perfil 
  para revisar mi progreso, verificar mis logros y descargar documentos cuando sea necesario.

  Scenario: Consulta exitosa del historial
    Given que el usuario ha completado varias evaluaciones o cursos con certificado
    And los registros están almacenados en la base de datos
    When accede a la sección “Historial de aprendizaje” desde su perfil
    Then el sistema muestra una lista cronológica con nombre del curso, fecha, puntaje y enlace al certificado
    And permite descargar el certificado correspondiente en formato PDF

  Scenario: Historial vacío
    Given que el usuario es nuevo o aún no ha completado ninguna evaluación
    When accede a la sección “Historial de aprendizaje”
    Then el sistema muestra un mensaje informativo “Aún no tienes registros de evaluaciones o certificados”
    And sugiere realizar la primera simulación o evaluación para generar su historial
