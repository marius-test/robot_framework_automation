*** Settings ***
Resource    ../resources/variables.robot
Variables    ../resources/expected_values.py
Resource    ../resources/keywords.robot
Test Teardown    Close Browser

*** Test Cases ***
Test Inventory Items Are Displayed
    [Tags]    validation    standard_user
    validate inventory items    ${ITEMS}    ${USER_TYPE}[standard]    ${PASSWORD}
