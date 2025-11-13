Feature: Certificados por especialidad
  Como usuario avanzado, quiero obtener certificados por especialidad al completar módulos temáticos 
  (como RCP, manejo de quemaduras o atención de fracturas), para acreditar competencias específicas dentro 
  del programa de capacitación en primeros auxilios.

  Scenario: Emisión de certificado por módulo especializado aprobado
    Given que el usuario completó todas las simulaciones y actividades del módulo “RCP básico”
    And obtuvo una calificación aprobatoria en la evaluación final
    When solicita la emisión del certificado de especialidad
    Then el sistema genera un documento digital con los datos del usuario, la especialidad cursada, 
    la fecha de emisión, el puntaje obtenido y un código de validación único
    And añade automáticamente el certificado al historial de certificaciones del usuario

  Scenario: Intento de certificación sin cumplir requisitos
    Given que el usuario intenta solicitar un certificado sin haber completado todas las actividades del módulo
    When presiona el botón “Solicitar certificado”
    Then el sistema muestra un mensaje de advertencia indicando que debe finalizar todas las simulaciones 
    y aprobar la evaluación final
    And bloquea temporalmente la opción de emisión hasta que cumpla los requisitos
