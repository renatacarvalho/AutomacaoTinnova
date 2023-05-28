*** Settings ***
Resource    ../Shared/setup_teardown.robot
Library    SeleniumLibrary
Library    FakerLibrary    locale=pt_BR
Resource    AdicionarPage.robot

*** Variables ***
${BotaoEntrar}  xpath=//*[@id="root"]/div/div[2]
${BotaoSair}    xpath=//*[@id="root"]/div/div[4]

*** Keywords ***
que eu acesse a pagina inicial
    Acessar URL
    Maximize Browser Window

eu clicar em entrar
    Wait Until Element Is Visible    ${BotaoEntrar}    10
    Click Element                    ${BotaoEntrar}

devo ir para a Home Page
    Sleep                            3
    Page Should Contain              Adicionar
clicar em Sair
    Click Element                    ${BotaoSair}
devo voltar para a tela inicial
    Wait Until Element Is Visible    ${BotaoEntrar}    10
    Page Should Contain Element      ${BotaoEntrar}
    Capture Page Screenshot
    






