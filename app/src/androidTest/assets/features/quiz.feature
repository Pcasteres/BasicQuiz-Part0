Feature: Quiz

  @quiz-feature
  Scenario Outline: responder a pregunta en  Question

    Given iniciar pantalla Question
    And mostrar pregunta "<question>"
    And ocultar resultado
    #And mostrar botones True y False y Cheat activados
    #And mostrar boton Next desactivado
    When pulsar boton "<button>"
    Then mostrar resultado "<result>" a respuesta "<answer>"
    #And mostrar botones True y False y Cheat desactivados
    #And mostrar boton Next activado

    Examples:
      | question           | button | answer | result    |
      | Question #1: True  | True   | True   | Correct   |
      | Question #1: True  | False  | True   | Incorrect |


#  @quiz-feature
#  Scenario Outline: pasar a  Cheat sin responder a pregunta en  Question
#
#    Given iniciar pantalla Question
#    And mostrar pregunta "<question>"
#    And ocultar resultado
#    And mostrar botones True y False y Cheat activados
#    And mostrar boton Next desactivado
#    When pulsar boton Cheat
#    Then iniciar pantalla Cheat
#    And mostrar mensaje Warning
#    And ocultar respuesta
#    And mostrar botones Yes y No activados
#    And pulsar boton Back
#
#    Examples:
#      | question          |
#      | Question #1: True |


#  @quiz-feature
#  Scenario Outline: volver a  Question sin mostrar respuesta en  Cheat
#
#    Given iniciar pantalla Question
#    And mostrar pregunta "<question>"
#    And ocultar resultado
#    And mostrar botones True y False y Cheat activados
#    And mostrar boton Next desactivado
#    And pulsar boton Cheat
#    And iniciar pantalla Cheat
#    And mostrar mensaje Warning
#    And ocultar respuesta
#    And mostrar botones Yes y No activados
#    When pulsar boton No
#    Then finalizar pantalla Cheat
#    And resumir pantalla Question
#    And mostrar pregunta "<question>"
#    And ocultar resultado
#    And mostrar botones True y False y Cheat activados
#    And mostrar boton Next desactivado
#
#    Examples:
#      | question          |
#      | Question #1: True |


#  @quiz-feature
#  Scenario Outline: mostrar respuesta en  Cheat
#
#    Given iniciar pantalla Question
#    And mostrar pregunta "<question>"
#    And ocultar resultado
#    And mostrar botones True y False y Cheat activados
#    And mostrar boton Next desactivado
#    And pulsar boton Cheat
#    And iniciar pantalla Cheat
#    And mostrar mensaje Warning
#    And ocultar respuesta
#    And mostrar botones Yes y No activados
#    When pulsar boton Yes
#    Then mostrar respuesta "<answer>" a pregunta "<question>"
#    And mostrar botones Yes y No desactivados
#    And pulsar boton Back
#
#    Examples:
#      | question          | answer |
#      | Question #1: True | True   |


#  @quiz-feature
#  Scenario Outline: volver a  Question mostrando respuesta en  Cheat
#
#    Given iniciar pantalla Question
#    And mostrar pregunta "<question1>"
#    And ocultar resultado
#    And mostrar botones True y False y Cheat activados
#    And mostrar boton Next desactivado
#    And pulsar boton Cheat
#    And iniciar pantalla Cheat
#    And mostrar mensaje Warning
#    And ocultar respuesta
#    And mostrar botones Yes y No activados
#    And pulsar boton Yes
#    And mostrar botones Yes y No desactivados
#    And mostrar respuesta "<answer>" a pregunta "<question1>"
#    When pulsar boton Back
#    Then finalizar pantalla Cheat
#    And resumir pantalla Question
#    And mostrar pregunta "<question2>"
#    And ocultar resultado
#    And mostrar botones True y False y Cheat activados
#    And mostrar boton Next desactivado
#
#    Examples:
#      | question1         | answer | question2          |
#      | Question #1: True | True   | Question #2: False |


  @quiz-feature
  Scenario Outline: pasar a siguiente pregunta en  Question

    Given iniciar pantalla Question
    And mostrar pregunta "<question1>"
    And ocultar resultado
    #And mostrar botones True y False y Cheat activados
    #And mostrar boton Next desactivado
    And pulsar boton "<button>"
    And mostrar resultado "<result>" a respuesta "<answer>"
    #And mostrar botones True y False y Cheat desactivados
    #And mostrar boton Next activado
    When pulsar boton Next
    Then mostrar pregunta "<question2>"
    And ocultar resultado
    #And mostrar botones True y False y Cheat activados
    #And mostrar boton Next desactivado

    Examples:
      | question1         | button  | answer  | result    | question2          |
      | Question #1: True | True    | True    | Correct   | Question #2: False |
      | Question #1: True | False   | True    | Incorrect | Question #2: False |




