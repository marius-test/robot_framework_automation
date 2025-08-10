*** Settings ***
Documentation    This is my 4th test case in robot framework.
Library    OperatingSystem

*** Variables ***
${test_variable_1}    dolorem ipsum dolor sit amet
${test_variable_2}    consectetur adipiscing elit

@{test_list}    sed    do    eiusmod    tempor

&{test_dictionary_1}    username=testuser1    password=testpass1
&{test_dictionary_2}    username=testuser2    password=testpass2

*** Test Cases ***
TEST4
    [Tags]    priority_2
    Log specific username and password    ${test_dictionary_1}[username]    ${test_dictionary_1}[password]
    Log specific username and password    ${test_dictionary_2}[username]    ${test_dictionary_2}[password]

*** Keywords ***
Log username
    Log    ${test_dictionary_1}[username]

Log password
    Log    ${test_dictionary_1}[password]

Log username and password 1
    Log    ${test_dictionary_1}[username]
    Log    ${test_dictionary_1}[password]

Log username and password 2
    Log username
    Log password

Log specific username
    [Arguments]    ${argument_1}
    Log    ${argument_1}

Log specific password
    [Arguments]    ${argument_1}
    Log    ${argument_1}

Log specific username and password
    [Arguments]    ${argument_1}    ${argument_2}
    Log    ${argument_1}
    Log    ${argument_2}

# robot -d output --loglevel TRACE tests\test_4.robot
