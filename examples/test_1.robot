*** Settings ***

Documentation    This is my 1st test case in robot framework.
Library    OperatingSystem

*** Variables ***

${test_variable_1}    dolorem ipsum dolor sit amet
${test_variable_2}    consectetur adipiscing elit

@{test_list}    sed    do    eiusmod    tempor

&{test_dictionary}    username=testuser    password=testpass

*** Test Cases ***

TEST1
    [Tags]    sanity
    Log    ${test_variable_1}
    Log    ${test_variable_2}
    Log    ${test_list}[2]
    Log    ${test_dictionary}[username]
    Log    ${test_dictionary}[password]
