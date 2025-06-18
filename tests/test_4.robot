*** Settings ***
Documentation    This is my 4th test case in robot framework.
Library    OperatingSystem

*** Keywords ***
Log username
    Log    ${test_4_dictionary_1}[username]

Log password
    Log    ${test_4_dictionary_1}[password]

Log username and password 1
    Log    ${test_4_dictionary_1}[username]
    Log    ${test_4_dictionary_1}[password]

Log username and password 2
    Log username
    Log password

Log specific username
    [Arguments]    ${argument_1}
    Log    ${argument_1}

Log specific username and password
    [Arguments]    ${argument_1}    ${argument_2}
    Log    ${argument_1}
    Log    ${argument_2}

*** Variables ***
${test_4_variable_1}    dolorem ipsum dolor sit amet
${test_4_variable_2}    consectetur adipiscing elit

@{test_4_list}    list_element_1    list_element_2    list_element_3    list_element_4

&{test_4_dictionary_1}    username=testuser1    password=testpass1
&{test_4_dictionary_2}    username=testuser2    password=testpass2

*** Test Cases ***
TEST
    [Tags]    priority_2
    Log specific username and password    ${test_4_dictionary_1}[username]    ${test_4_dictionary_1}[password]
    Log specific username and password    ${test_4_dictionary_2}[username]    ${test_4_dictionary_2}[password]

# robot -d output --loglevel TRACE tests\test_4.robot
