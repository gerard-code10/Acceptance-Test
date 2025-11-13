Feature: Avatares personalizables
  Como usuario, quiero personalizar mi avatar con accesorios y logros para reflejar mi progreso e identidad.

  Scenario: Personalización exitosa del avatar
    Given que el usuario ha desbloqueado accesorios
    When selecciona ítems y confirma los cambios
    Then el sistema actualiza y guarda su avatar en todo el perfil

  Scenario: Intento de usar ítems bloqueados
    Given que el usuario visualiza accesorios bloqueados
    When intenta equipar uno
    Then la app muestra un mensaje de requisito
    And no permite aplicarlo hasta desbloquearlo
