*** Settings ***
Name    Login Test - Multiple Users (Positive & Negative)
Documentation    Data-driven login tests using FOR loops to validate both successful and failed login attempts across multiple user types.
Resource    ../resources/expected_values.resource
Resource    ../resources/variables.resource
Resource    ../resources/keywords.resource
Test Teardown    Close Browser

*** Test Cases ***
Test Login Successful
    [Tags]    regression
    FOR    ${key}    IN    @{VALID_USERS}
    login    ${USER_TYPE}[${key}]    ${PASSWORD}
    Wait Until Element Is Visible    ${APP_LOGO}    timeout=${DEFAULT_TIMEOUT}
    ${actual_app_logo_text}=    Get Text    ${APP_LOGO}
    Should Be Equal    ${APP_LOGO_TEXT}    ${actual_app_logo_text}
    END

Test Login Failed
    [Tags]    regression
    FOR    ${key}   IN    @{INVALID_USERS}
    login   ${USER_TYPE}[${key}]    ${PASSWORD}
    Wait Until Element Is Visible    ${ERROR_CONTAINER}    timeout=${DEFAULT_TIMEOUT}
    Page Should Contain Element    ${ERROR_CONTAINER}
    END
