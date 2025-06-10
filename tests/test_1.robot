*** Settings ***
Documentation    This is my 1st test case in robot framework.
Library    OperatingSystem

*** Keywords ***

*** Variables ***
${test_1_variable_1}    dolorem ipsum dolor sit amet
${test_1_variable_2}    consectetur adipiscing elit

@{test_1_list}    list_element_1    list_element_2    list_element_3    list_element_4

&{test_1_dictionary}    username=testuser    password=testpass

*** Test Cases ***
TEST1
    [Tags]    sanity
    Log    ${test_1_variable_1}
    Log    ${test_1_variable_2}
    Log    ${test_1_list}[2]
    Log    ${test_1_dictionary}[username]
    Log    ${test_1_dictionary}[password]
