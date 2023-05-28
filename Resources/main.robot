*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary    locale=pt_BR
Library    ./Shared/user.py

###Data###
Resource    Data/geral.robot

###Shared###
Resource    Shared/setup_teardown.robot

###Pages###
Resource    PageObject/AdicionarPage.robot
Resource    PageObject/DeletarPage.robot
Resource    PageObject/EditarPage.robot
Resource    PageObject/PaginaInicial.robot
Resource    PageObject/VisualizarPage.robot