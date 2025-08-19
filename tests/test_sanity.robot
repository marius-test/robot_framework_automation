*** Settings ***
Resource    ../resources/variables.robot
Resource    ../resources/expected_values.robot
Resource    ../resources/keywords.robot
Test Teardown    Close Browser

*** Test Cases ***
Test Sanity
    [Tags]    sanity
    open login page
    ${actual_login_logo_text}=    Get Text    ${LOGIN_LOGO}
    Should Be Equal    ${LOGIN_LOGO_TEXT}    ${actual_login_logo_text}
