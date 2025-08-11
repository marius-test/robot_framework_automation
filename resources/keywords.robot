*** Settings ***
Resource    ../resources/variables.robot
Library    SeleniumLibrary

*** Keywords ***

open login page
    Open Browser    ${BASE_URL}    ${BROWSER}
    Wait Until Element Is Visible    ${LOGIN_LOGO}    timeout=${DEFAULT_TIMEOUT}

login with username and password
    [Arguments]    ${username}    ${password}
    open login page
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Click Button    ${LOGIN_BUTTON}
