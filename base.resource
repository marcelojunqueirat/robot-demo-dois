*** Settings ***
Library  SeleniumLibrary
Library  ${CURDIR}/../utils-ci/utils.py

*** Keywords ***
Abrir Navegador
    Carregar Env  ${CURDIR}/.env
    ${BASE_URL}=  Coletar Env  BASE_URL
    Open Browser  ${BASE_URL}  headlesschrome
    Maximize Browser Window

Fechar Navegador
    Capture Page Screenshot
    Close All Browsers
