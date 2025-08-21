*** Settings ***
Resource    ../resources/variables.resource
Resource    ../resources/expected_values.resource
Resource    ../resources/keywords.resource
Test Teardown    Close Browser

*** Test Cases ***
Test Sanity
    [Tags]    sanity
    open login page
    ${actual_login_logo_text}=    Get Text    ${LOGIN_LOGO}
    Should Be Equal    ${LOGIN_LOGO_TEXT}    ${actual_login_logo_text}
