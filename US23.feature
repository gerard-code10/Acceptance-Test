Feature: Compartir logros en redes sociales
  Como usuario, quiero compartir mis logros en redes para mostrar mi progreso y motivar a otros.

  Scenario: Compartir logro con red vinculada
    Given que el usuario obtiene un logro y tiene una red conectada
    When selecciona “Compartir en redes”
    Then la app genera una imagen con el logro y mensaje
    And publica tras la confirmación del usuario

  Scenario: Compartir logro sin red vinculada
    Given que el usuario obtiene un logro sin redes conectadas
    When pulsa “Compartir”
    Then la app invita a vincular una cuenta
    And permite publicar tras la vinculación exitosa
