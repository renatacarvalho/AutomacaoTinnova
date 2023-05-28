*** Settings ***
Resource    ../main.robot
Resource    AdicionarPage.robot
Library    SeleniumLibrary
Library    FakerLibrary    locale=pt_BR

*** Variables ***
&{DeletarUsuario}
...    SimDeletarUsuario= xpath=//button[@class='swal-button swal-button--confirm swal-button--danger'][contains(.,'Sim')]
...    BotaoDeletar= xpath=//*[@id="root"]/div/div[2]/div[2]/div[4]/div[5]/div[3]
...    NaoDeletarUsuario= xpath=//button[@class='swal-button swal-button--cancel'][contains(.,'Não')]

*** Keywords ***
clicar em deletar um usuario
    Click Element                            ${DeletarUsuario.BotaoDeletar}
    Capture Page Screenshot

clicar em SIM na mensagem de confirmação
    Click Button                             ${DeletarUsuario.SimDeletarUsuario}
    
o usuario deletado não deverá aparecer na listagem
    Sleep                                    2
    Wait Until Element Is Not Visible        ${NomeCadastrado}
    Capture Page Screenshot

clicar em NAO na mensagem de confirmação
    Click Button                             ${DeletarUsuario.NaoDeletarUsuario}

o usuario nao deve ser deletado
    Wait Until Page Contains                 ${NomeCadastrado}    10
    Capture Page Screenshot