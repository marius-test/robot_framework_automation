*** Settings ***
Resource    ../resources/variables.robot
Resource    ../resources/expected_values.robot
Resource    ../resources/keywords.robot
Test Teardown    Close Browser

*** Test Cases ***
Test Inventory Items Are Displayed
    [Tags]    standard_user
    open inventory page    ${USER_TYPE}[standard]    ${PASSWORD}
    