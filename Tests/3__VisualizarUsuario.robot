*** Settings ***
Resource         ../Resources/main.robot
Resource    ../Resources/Data/bdd.robot

*** Test Cases ***

Visualizar usuario cadastrado
    Given    que eu esteja na tela Home Page
    When     eu clicar em visualizar um usuario
    Then     todos os campos devem estar bloqueados para edição 

Visualizar usuario cadastrado e voltar para a tela de listagem
    Given    que eu esteja na tela Home Page
    When     eu clicar em visualizar um usuario
    And      clicar no botao Voltar
    Then     devo voltar para a tela de listagem