*** Settings ***
Resource    ../main.robot
Resource    PaginaInicial.robot
Library    String
Library    SeleniumLibrary
Library    FakerLibrary    locale=pt_BR


*** Variables ***
&{CadastroUsuario}
...    Adicionar= xpath=//div[@class='sc-bczRLJ xufcW'][contains(.,'Adicionar')]
...    InputNome= xpath=//input[contains(@name,'name')]
...    InputEmail= xpath=//input[contains(@name,'email')]
...    InputCPF= xpath=//input[contains(@name,'cpf')]
...    InputTelefone= xpath=//input[contains(@name,'phone')]
...    BotaoGuardar= xpath=//*[@id="root"]/div/div[6]

*** Keywords ***
que eu esteja na tela Home Page
    Run Keyword                             que eu acesse a pagina inicial
    Run Keyword                             eu clicar em entrar
    Run Keyword                             devo ir para a Home Page

clicar em adicionar
    Click Element                            ${CadastroUsuario.Adicionar}
    Sleep                                    2

preencher todos os campos da tela: Nome, Email, CPF e Telefone
    ${NovoNome}                              FakerLibrary.Name
    Input Text                               ${CadastroUsuario.InputNome}    ${NovoNome}
    ${NomeCadastrado}                        Get Element Attribute    ${CadastroUsuario.InputNome}    value
    Set Global Variable                      ${NomeCadastrado}

    ${NovoEmail}                             FakerLibrary.Email
    Input Text                               ${CadastroUsuario.InputEmail}   ${NovoEmail}
    ${EmailCadastrado}                       Get Element Attribute    ${CadastroUsuario.InputEmail}    value
    Set Global Variable                      ${EmailCadastrado}

    ${NovoCPF}                               user.cpf
    Input Text                               ${CadastroUsuario.InputCPF}    ${NovoCPF}
    ${CPFCadastrado}                         Get Element Attribute    ${CadastroUsuario.InputCPF}    value
    Set Global Variable                      ${CPFCadastrado} 

    ${NovoTelefone}                          user.telefone
    Input Text                               ${CadastroUsuario.InputTelefone}    ${NovoTelefone}
    ${TelefoneCadastrado}                    Get Element Attribute    ${CadastroUsuario.InputTelefone}    value
    Set Global Variable                      ${TelefoneCadastrado}
    Capture Page Screenshot
clicar em guardar
    Click Element                            ${CadastroUsuario.BotaoGuardar}

o nome do usuario cadastrado deve aparecer na tela de listagem
    Wait Until Page Contains                 ${NomeCadastrado}    10
    Capture Page Screenshot

não preencher o campo Email
    Wait Until Element Is Visible            ${CadastroUsuario.InputEmail}

preencher os demais campos obrigatorios Nome, CPF e Telefone
    ${NovoNome}                              FakerLibrary.Name
    Input Text                               ${CadastroUsuario.InputNome}    ${NovoNome}

    ${NovoCPF}                               user.cpf
    Input Text                               ${CadastroUsuario.InputCPF}    ${NovoCPF}

    ${NovoTelefone}                          user.telefone
    Input Text                               ${CadastroUsuario.InputTelefone}    ${NovoTelefone}

o sistema deverá apresentar a mensagem "Atenção! Todos os campos devem ser preenchidos"
    Set Test Message                         "Atenção! Todos os campos devem ser preenchidos"
    Capture Page Screenshot

não preencher o campo nome
    Wait Until Element Is Visible            ${CadastroUsuario.InputNome}

preencher os demais campos obrigatorios Email, CPF e Telefone
    ${NovoEmail}                             FakerLibrary.Email
    Input Text                               ${CadastroUsuario.InputEmail}    ${NovoEmail}

    ${NovoCPF}                               user.cpf
    Input Text                               ${CadastroUsuario.InputCPF}    ${NovoCPF}

    ${NovoTelefone}                          user.telefone
    Input Text                               ${CadastroUsuario.InputTelefone}    ${NovoTelefone}

não preencher o campo cpf
    Wait Until Element Is Visible            ${CadastroUsuario.InputCPF}

preencher os demais campos obrigatorios Nome, Email e Telefone
    ${NovoNome}                              FakerLibrary.Name
    Input Text                               ${CadastroUsuario.InputNome}    ${NovoNome}

    ${NovoEmail}                             FakerLibrary.Email
    Input Text                               ${CadastroUsuario.InputEmail}    ${NovoEmail}

    ${NovoTelefone}                          user.telefone
    Input Text                               ${CadastroUsuario.InputTelefone}    ${NovoTelefone}

não preencher o campo telefone
    Wait Until Element Is Visible            ${CadastroUsuario.InputTelefone}
    
preencher os demais campos obrigatorios Nome, Email e CPF
    ${NovoNome}                              FakerLibrary.Name
    Input Text                               ${CadastroUsuario.InputNome}    ${NovoNome}

    ${NovoEmail}                             FakerLibrary.Email
    Input Text                               ${CadastroUsuario.InputEmail}    ${NovoEmail}

    ${NovoCPF}                               user.Cpf
    Input Text                               ${CadastroUsuario.InputCPF}    ${NovoCPF}
    
    
    
    