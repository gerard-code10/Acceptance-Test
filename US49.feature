Feature: Integración con instituciones educativas
  Como representante de estudiantes, quiero que SafeStep se integre en nuestros programas académicos
  para reforzar la preparación en emergencias y ofrecer capacitaciones prácticas dentro de la formación universitaria.

  Scenario: Integración institucional exitosa
    Given que un grupo de representantes estudiantiles solicita integrar SafeStep en su programa académico
    And que la plataforma valida la solicitud y habilita un entorno exclusivo
    When el administrador institucional configura los cursos y roles dentro del espacio
    Then los estudiantes pueden acceder con sus credenciales universitarias
    And visualizar módulos y evaluaciones diseñadas para su carrera o facultad

  Scenario: Generación de reportes institucionales
    Given que la integración universitaria de SafeStep está activa
    And que los estudiantes completan simulaciones o certificaciones
    When el representante o coordinador accede al panel institucional
    Then el sistema muestra un tablero con métricas grupales:
      | cantidad de alumnos activos | tasas de aprobación | desempeño general |
    And permite exportar reportes para presentaciones académicas o informes internos
