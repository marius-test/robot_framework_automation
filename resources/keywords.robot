*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Login Page
    Open Browser    ${BASE_URL}    ${BROWSER}
    Wait Until Element Is Visible    ${NON_EXISTENT_ELEMENT}    timeout=${DEFAULT_TIMEOUT}
