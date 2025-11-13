Feature: Accesibilidad visual
  Como usuario con dificultades visuales,
  quiero activar un modo de alto contraste desde la configuración de accesibilidad de la aplicación,
  para visualizar de forma clara los textos, botones y elementos interactivos sin esfuerzo,
  asegurando una navegación inclusiva y legible en todas las secciones de la plataforma.

  Scenario: Activación del modo de alto contraste
    Given que el usuario accede al menú "Ajustes / Accesibilidad"
    When selecciona la opción "Activar modo de alto contraste"
    Then el sistema aplica de inmediato el nuevo esquema visual de alto contraste en toda la interfaz
    And ajusta los colores, íconos y tipografía para garantizar la máxima legibilidad sin comprometer la estructura visual

  Scenario: Desactivación del modo de alto contraste
    Given que el usuario tiene activado el modo de alto contraste
    When desactiva manualmente la opción en el mismo menú de accesibilidad
    Then la aplicación retorna al modo de color predeterminado
    And registra la preferencia del usuario para mantenerla en futuras sesiones
