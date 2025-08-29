*** Settings ***
Resource    ../resources/variables.resource
Variables    ../resources/expected_values.py
Resource    ../resources/keywords.resource
Test Teardown    Close Browser

*** Test Cases ***
Test Inventory Items Are Displayed
    [Tags]    validation    standard_user
    validate inventory items    ${ITEMS}    ${USER_TYPE}[standard]    ${PASSWORD}
