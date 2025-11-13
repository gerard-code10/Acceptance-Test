Feature: Escenario de atragantamiento
  Como usuario,
  quiero practicar cómo reaccionar ante un caso de atragantamiento mediante una simulación interactiva,
  para aprender a seleccionar y ejecutar las maniobras correctas y saber cómo actuar en una emergencia real.

  Scenario: Selección y ejecución de maniobra con retroalimentación inmediata
    Given que el usuario ha iniciado sesión y selecciona el escenario "Atragantamiento" desde el menú de simulaciones
    When el sistema presenta el caso (persona con obstrucción y síntomas) y el usuario selecciona y aplica una maniobra (por ejemplo, Heimlich) siguiendo las instrucciones en pantalla
    Then la aplicación simula el resultado de la maniobra en tiempo real
    And muestra retroalimentación inmediata indicando si la maniobra fue eficaz, parcial o inadecuada, con explicación breve del porqué

  Scenario: Corrección guiada y reintento tras fallo
    Given que el usuario ejecutó una maniobra que no resolvió la obstrucción o cometió un error crítico
    When la app detecta el fallo (simulación de fracaso o elección peligrosa)
    Then la simulación se pausa y la aplicación despliega una guía visual y textual paso a paso con la secuencia correcta (incluyendo seguridad del rescatador y consideraciones para bebés o adultos)
    And ofrece la opción de reintentar el escenario inmediatamente o practicar en modo tutorial antes de evaluar de nuevo
