*** Settings ***
Resource  base.resource

Test Setup  Abrir Navegador
Test Teardown  Fechar Navegador

*** Test Cases ***
Pesquisar por teste no google
    Wait Until Element Is Visible  id=APjFqb  10s
    Input Text  id=APjFqb  teste

    Wait Until Element Is Visible  //div[contains(@class, "FPdoLc")]//input[@value="Pesquisa Google"]  10s
    Page Should Contain Element  //div[contains(@class, "FPdoLc")]//input[@value="Pesquisa Google"]
    Click Element  //div[contains(@class, "FPdoLc")]//input[@value="Pesquisa Google"]


    # Wait Until Element Is Visible  id=rcnt  10s
    # Page Should Contain Element  id=rcnt
    # ${PRIMEIRO_RESULTADO}=  Get Text  //div[@data-rpos="0"]//h3
    # Log To Console  ${PRIMEIRO_RESULTADO}
    # Log  ${PRIMEIRO_RESULTADO}
    