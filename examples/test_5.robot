*** Settings ***
Library    OperatingSystem
Resource    ../examples/resources.robot

*** Test Cases ***
TEST5
    [Tags]    priority_2
    Log username and password   ${test_dictionary_1}[username]    ${test_dictionary_1}[password]
    Log username and password   ${test_dictionary_2}[username]    ${test_dictionary_2}[password]

# robot -d output --loglevel TRACE tests\test_5.robot
