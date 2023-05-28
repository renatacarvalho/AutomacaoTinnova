*** Settings ***
Resource         ../Resources/main.robot
Resource    ../Resources/Data/bdd.robot

*** Test Cases ***

Edição de usuario campo nome
    Given    que eu esteja na tela Home Page
    When     que eu clicar em editar um usuario 
    And      editar o campo Nome
    And      clicar em atualizar
    Then     o usuario deve ter o campo nome editado
Edição de usuario campo email
    Given    que eu esteja na tela Home Page
    When     que eu clicar em editar um usuario 
    And      editar o campo email
    And      clicar em atualizar
    Then     o usuario deve ter o campo email editado
Edição de usuario campo cpf
    Given    que eu esteja na tela Home Page
    When     que eu clicar em editar um usuario 
    And      editar o campo cpf
    And      clicar em atualizar
    Then     o usuario deve ter o campo cpf editado
Edição de usuario campo telefone
    Given    que eu esteja na tela Home Page
    When     que eu clicar em editar um usuario 
    And      editar o campo telefone
    And      clicar em atualizar
    Then     o usuario deve ter o campo telefone editado




