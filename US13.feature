Feature: Progreso visual
  Como usuario, quiero visualizar mi progreso mediante gráficos e indicadores visuales para conocer mi avance en los distintos módulos de primeros auxilios y detectar las áreas que necesito mejorar.

  Scenario: Visualización general del progreso del usuario
    Given que el usuario ha completado varias simulaciones en distintos módulos
    When accede a la sección "Perfil / Mi progreso"
    Then la aplicación muestra gráficos de barras y porcentajes de avance por módulo
    And resalta las áreas con menor puntaje para sugerir reforzarlas

  Scenario: Interacción con gráficos detallados
    Given que el usuario se encuentra en la sección de progreso
    When selecciona un módulo o gráfico específico
    Then el sistema muestra información detallada sobre su desempeño
    And ofrece acceso directo a los módulos sugeridos para mejorar
