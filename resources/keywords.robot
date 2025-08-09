*** Settings ***

Library    SeleniumLibrary

*** Keywords ***

Open Login Page
    Open Browser    ${BASE_URL}    ${BROWSER}
    Wait Until Element Is Visible    ${LOGIN_LOGO}    timeout=${DEFAULT_TIMEOUT}
