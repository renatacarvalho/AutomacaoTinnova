*** Settings ***
Resource         ../Resources/main.robot
Resource    ../Resources/Data/bdd.robot

*** Test Cases ***

Deletar usuario clicando em Sim na mensagem de confirmação
    [Documentation]    Este teste depende da execução do teste "Cadastro de usuario com sucesso"
    Given    que eu esteja na tela Home Page
    When     clicar em deletar um usuario
    And      clicar em SIM na mensagem de confirmação
    Then     o usuario deletado não deverá aparecer na listagem

Não deletar usuario clicando em Não na mensagem de confirmação
    [Documentation]    Este teste depende da execução do teste "Cadastro de usuario com sucesso"
    Given    que eu esteja na tela Home Page
    When     clicar em deletar um usuario
    And      clicar em NAO na mensagem de confirmação
    Then     o usuario nao deve ser deletado