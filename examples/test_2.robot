*** Settings ***
Documentation    Demonstrates using reusable keywords to log usernames and passwords from multiple dictionaries.
Resource    ../examples/resources.robot

*** Test Cases ***
Log Dictionary 1 & 2
    [Tags]    regression
    # log username and password from first dictionary
    Log Username And Password   ${test_dictionary_1}[username]    ${test_dictionary_1}[password]

    # log username and password from second dictionary
    Log Username And Password   ${test_dictionary_2}[username]    ${test_dictionary_2}[password]

# robot -d output --loglevel DEBUG tests\test_2.robot
