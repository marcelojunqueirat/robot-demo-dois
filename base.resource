*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Abrir Navegador
    Open Browser  https://www.google.com/  gc
    Maximize Browser Window

Fechar Navegador
    Capture Page Screenshot
    Close All Browsers
