*** Settings ***

Resource    ../resources/variables.robot
Resource    ../resources/expected_values.robot
Resource    ../resources/keywords.robot

*** Test Cases ***

Login Successful
    Open Login Page
    Input Text    ${USERNAME_FIELD}    ${USER_TYPE}[standard]
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${APP_LOGO}    timeout=${DEFAULT_TIMEOUT}
    ${actual_app_logo_text}=    Get Text    ${APP_LOGO}
    Should Be Equal    ${APP_LOGO_TEXT}    ${actual_app_logo_text}
    [Teardown]    Close Browser  # runs even if the test fails
