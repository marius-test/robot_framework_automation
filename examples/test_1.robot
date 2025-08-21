*** Settings ***
Documentation    Demonstrates usage of variables, lists, and dictionaries, along with simple assertions for expected vs actual values.
Resource    ../examples/test_data.resource

*** Test Cases ***
Test Variables
    [Tags]    sanity
    [Teardown]    Close Browser  # runs even if the test fails
    # log and verify string variable 1
    Log    ${test_variable_1}
    Should Be Equal    dolorem ipsum dolor sit amet    ${test_variable_1}

    # log and verify string variable 2
    Log    ${test_variable_2}
    Should Be Equal    consectetur adipiscing elit    ${test_variable_2}

Test List
    # log and verify list item at index 2
    Log    ${test_list}[2]
    Should Be Equal    do    ${test_list}[2]

    # log and verify list item at index 3
    Log    ${test_list}[3]
    Should Be Equal    eiusmod    ${test_list}[3]

Test Dictionary
    # log and verify dictionary value for key "username"
    log username    ${test_dictionary_1}[username]
    Should Be Equal    testuser1    ${test_dictionary_1}[username]

    # log and verify dictionary value for key "password"
    log password    ${test_dictionary_1}[password]
    Should Be Equal    testpass1    ${test_dictionary_1}[password]

# robot -d output --loglevel DEBUG tests\test_1.robot
