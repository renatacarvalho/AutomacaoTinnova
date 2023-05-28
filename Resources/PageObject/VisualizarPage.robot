*** Settings ***
Resource    ../main.robot
Resource    PaginaInicial.robot
Resource   AdicionarPage.robot 
Library    SeleniumLibrary
Library    FakerLibrary    locale=pt_BR

*** Variables ***
${BotaoVisualizar}  xpath=//*[@id="root"]/div/div[2]/div[2]/div[3]/div[5]/div[1]
${BotaoVoltar}    xpath=//*[@id="root"]/div/div[6]

*** Keywords ***
eu clicar em visualizar um usuario
    Click Element                 ${BotaoVisualizar}

todos os campos devem estar bloqueados para edição 
    Element Should Be Disabled    ${CadastroUsuario.InputNome}
    Element Should Be Disabled    ${CadastroUsuario.InputEmail}
    Element Should Be Disabled    ${CadastroUsuario.InputCPF}
    Element Should Be Disabled    ${CadastroUsuario.InputTelefone}
    Capture Page Screenshot

clicar no botao Voltar
    Click Element                 ${BotaoVoltar}

devo voltar para a tela de listagem
    Run Keyword    devo ir para a Home Page
    Capture Page Screenshot
    