*** Settings ***
Resource         ../Resources/main.robot
Resource         ../Resources/Data/bdd.robot

*** Test Cases ***
Acesso a Home Page
    Given    que eu acesse a pagina inicial
    When     eu clicar em entrar
    Then     devo ir para a Home Page

Realizar logout
    Given    que eu esteja na tela Home Page
    When     clicar em Sair
    Then     devo voltar para a tela inicial