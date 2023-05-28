*** Settings ***
Resource         ../Resources/main.robot
Resource    ../Resources/Data/bdd.robot

*** Test Cases ***
Cadastro de usuario com sucesso
    Given    que eu esteja na tela Home Page
    When     clicar em adicionar
    And      preencher todos os campos da tela: Nome, Email, CPF e Telefone
    And      clicar em guardar
    Then     o nome do usuario cadastrado deve aparecer na tela de listagem
Cadastro de usuario sem o preenchimento do campo obrigatório Email
    Given    que eu esteja na tela Home Page
    When     clicar em adicionar
    And      não preencher o campo email
    And      preencher os demais campos obrigatorios Nome, CPF e Telefone
    And      clicar em guardar
    Then     o sistema deverá apresentar a mensagem "Atenção! Todos os campos devem ser preenchidos"
Cadastro de usuario sem o preenchimento do campo obrigatório Nome
    Given    que eu esteja na tela Home Page
    When     clicar em adicionar
    And      não preencher o campo nome
    And      preencher os demais campos obrigatorios Email, CPF e Telefone
    And      clicar em guardar
    Then     o sistema deverá apresentar a mensagem "Atenção! Todos os campos devem ser preenchidos"
Cadastro de usuario sem o preenchimento do campo obrigatório CPF
    Given    que eu esteja na tela Home Page
    When     clicar em adicionar
    And      não preencher o campo cpf
    And      preencher os demais campos obrigatorios Nome, Email e Telefone
    And      clicar em guardar
    Then     o sistema deverá apresentar a mensagem "Atenção! Todos os campos devem ser preenchidos"
Cadastro de usuario sem o preenchimento do campo obrigatório Telefone
    Given    que eu esteja na tela Home Page
    When     clicar em adicionar
    And      não preencher o campo telefone
    And      preencher os demais campos obrigatorios Nome, Email e CPF
    And      clicar em guardar
    Then     o sistema deverá apresentar a mensagem "Atenção! Todos os campos devem ser preenchidos"
    

