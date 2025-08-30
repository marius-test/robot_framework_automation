*** Settings ***
Name    Full Inventory Items Check
Documentation    Data-driven test using a FOR loop to validate each inventory item's Name, Description, and Price against expected values.
Variables    ../resources/expected_values.py
Resource    ../resources/keywords.resource
Test Teardown    Close Browser

*** Test Cases ***
Test Inventory Items Are Displayed
    [Tags]    validation    standard_user
    validate inventory items    ${ITEMS}    ${USER_TYPE}[standard]    ${PASSWORD}
