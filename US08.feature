Feature: Escenario de quemaduras
  Como usuario, quiero aprender cómo actuar ante una quemadura para aplicar primeros auxilios correctamente.

  Scenario: Manejo correcto
    Given que el usuario entra al escenario "Quemaduras"
    When enfría la zona con agua y la cubre con gasa
    Then la app indica que las acciones son correctas
    And muestra una breve explicación educativa

  Scenario: Manejo incorrecto
    Given que el usuario entra al escenario "Quemaduras"
    When aplica una acción inadecuada como usar hielo o crema
    Then la app muestra una alerta
    And enseña los pasos correctos para tratar la quemadura
