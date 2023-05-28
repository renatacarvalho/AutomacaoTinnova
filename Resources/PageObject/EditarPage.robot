*** Settings ***
Resource    ../main.robot
Resource    AdicionarPage.robot
Library    SeleniumLibrary
Library    FakerLibrary    locale=pt_BR

*** Variables ***
&{EditarUsuario}
...    BotaoEditar= xpath=//*[@id="root"]/div/div[2]/div[2]/div[1]/div[5]/div[2]
...    BotaoAtualizar= xpath=//div[@class='sc-bczRLJ xufcW'][contains(.,'ATUALIZAR')]


*** Keywords ***
que eu clicar em editar um usuario 
    Click Element                             ${EditarUsuario.BotaoEditar}
    Capture Page Screenshot

editar o campo Nome
    ${EditName}                               FakerLibrary.Name
    Input Text                                ${CadastroUsuario.InputNome}    ${EditName}
    ${NameEdition}                            Get Element Attribute    ${CadastroUsuario.InputNome}    value
    Set Global Variable                       ${NameEdition}

clicar em atualizar
    Click Element                             ${EditarUsuario.BotaoAtualizar}

o usuario deve ter o campo nome editado
    Wait Until Page Contains                  ${NameEdition}
    Capture Page Screenshot

editar o campo email
    ${EditEmail}                              FakerLibrary.Email
    Input Text                                ${CadastroUsuario.InputEmail}    ${EditEmail}
    ${EmailEdition}                           Get Element Attribute    ${CadastroUsuario.InputEmail}    value
    Set Global Variable                       ${EmailEdition}

o usuario deve ter o campo email editado
    Wait Until Page Contains                  ${EmailEdition}
    Capture Page Screenshot

editar o campo cpf
    ${EditCPF}                                user.cpf
    Input Text                                ${CadastroUsuario.InputCPF}    ${EditCPF}
    ${CPFEdition}                             Get Element Attribute    ${CadastroUsuario.InputCPF}    value
    Set Global Variable                       ${CPFEdition}

o usuario deve ter o campo cpf editado
    Wait Until Page Contains                  ${CPFEdition}
    Capture Page Screenshot

editar o campo telefone
    ${EditTelefone}                           user.telefone
    Input Text                                ${CadastroUsuario.InputTelefone}    ${EditTelefone}
    ${TelefoneEdition}                        Get Element Attribute    ${CadastroUsuario.InputTelefone}    value
    Set Global Variable                       ${TelefoneEdition}
    
o usuario deve ter o campo telefone editado
    Wait Until Page Contains                  ${TelefoneEdition}
    Capture Page Screenshot