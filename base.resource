*** Settings ***
Library  SeleniumLibrary
Library  ${CURDIR}/../utils-ci/utils.py

*** Keywords ***
Abrir Navegador
    ${TEST}=  Teste Nome  Marcelo
    Log  Marcelo
    Open Browser  https://www.google.com/  headlesschrome
    Maximize Browser Window

Fechar Navegador
    Capture Page Screenshot
    Close All Browsers
