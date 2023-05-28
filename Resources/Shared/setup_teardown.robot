*** Settings ***
Resource    ../Data/geral.robot
Library    SeleniumLibrary

*** Keywords ***

Acessar URL
    ${variables}=  Get variables

    Run Keyword If    "\${BROWSER_OPENED}" in $variables
    ...    Go To    ${geral.URL}
    ...  ELSE
    ...    Abrir Chrome
    
Abrir Chrome
    Open Browser    ${geral.URL}    ${geral.Browser}    options=${geral.Options}
    Set Global Variable    ${BROWSER_OPENED}    True

Fechar navegador
    Close Browser

