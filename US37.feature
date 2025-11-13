Feature: Simulación colaborativa
  Como miembro de la comunidad, quiero participar en simulaciones grupales para mejorar la coordinación y la toma de decisiones colectivas durante emergencias simuladas.

  Scenario: Inicio exitoso de una simulación grupal
    Given que varios usuarios han sido invitados a una simulación colaborativa y han aceptado participar
    And que el sistema sincronizó correctamente la sesión para todos los dispositivos
    When el organizador inicia la simulación grupal
    Then todos los participantes visualizan el mismo entorno interactivo
    And la aplicación registra sus acciones en tiempo real para medir la coordinación del grupo

  Scenario: Evaluación y retroalimentación del desempeño grupal
    Given que la simulación colaborativa ha finalizado
    And el sistema registró las acciones de todos los usuarios
    When se procesa el resultado final
    Then la aplicación muestra un informe con la calificación grupal, los aciertos y errores de cada miembro
    And ofrece sugerencias de mejora para futuras prácticas colectivas
