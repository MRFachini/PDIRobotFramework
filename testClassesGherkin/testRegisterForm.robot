*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            http://aprendendotestar.com.br/treinar-automacao.php
${BROWSER}        chrome
${NEW_NAME}       Matheus Fachini
${USER}           pdiMatheus
${PASSWORD}       Password123

*** Test Cases ***
Register A New Name And Verify In The Table
    [Documentation]  This test case verifies that a new name can be registered and appears in the table.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Fill Registration Form With New Name
    Submit The Form
    Verify Name Is In The Table
    Close Browser

*** Keywords ***
Fill Registration Form With New Name
    [Documentation]  Fills the form with the new name and other required details.
    Input Text    name=form_usuario      ${USER}
    Input Text    name=form_nome       ${NEW_NAME}
    Input Text    id=senha      ${PASSWORD}

Submit The Form
    [Documentation]  Submits the registration form.
    Click Button    xpath=//input[@type='submit']

Verify Name Is In The Table
    [Documentation]  Verifies that the newly registered name appears in the table.
    Wait Until Element Is Visible    xpath=//table[@id='tabela']//td[contains(text(),'${NEW_NAME}')]    10 seconds
    Element Should Be Visible        xpath=//table[@id='tabela']//td[contains(text(),'${NEW_NAME}')]
