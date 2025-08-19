*** Settings ***
Resource    ../resources/variables.robot
Library    SeleniumLibrary

*** Keywords ***

open login page
    Open Browser    ${BASE_URL}    ${BROWSER}
    Wait Until Element Is Visible    ${LOGIN_LOGO}    timeout=${DEFAULT_TIMEOUT}

login
    [Arguments]    ${username}    ${password}
    open login page
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Click Button    ${LOGIN_BUTTON}

open inventory page
    [Arguments]    ${username}    ${password}
    login    ${username}    ${password}
    Wait Until Element Is Visible    ${APP_LOGO}    timeout=${DEFAULT_TIMEOUT}

validate inventory items
    [Arguments]    ${item}    ${description}    ${price}
    open inventory page    ${USER_TYPE}[standard]    ${PASSWORD}
    