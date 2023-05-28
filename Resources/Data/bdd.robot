*** Settings ***

Documentation    Este arquivo instancia os termos mandatórios de BDD (Bahavior Driven Development), Given(Dado) - When(Quando) - Then(Então) - And(E), em inglês(US)


*** Keywords ***

Given
    [Arguments]    ${Keyword}
    Run Keyword    ${keyword}

When
    [Arguments]    ${Keyword}
    Run Keyword    ${keyword}

Then
    [Arguments]    ${Keyword}
    Run Keyword    ${keyword}

And
    [Arguments]    ${Keyword}
    Run Keyword    ${keyword}
