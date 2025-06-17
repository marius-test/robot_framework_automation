*** Settings ***
Documentation    This is my 4th test case in robot framework.
Library    OperatingSystem

*** Keywords ***
Log My Username
    Log    ${test_4_dictionary}[username]

Log My Password
    Log    ${test_4_dictionary}[password]

*** Variables ***
${test_4_variable_1}    dolorem ipsum dolor sit amet
${test_4_variable_2}    consectetur adipiscing elit

@{test_4_list}    list_element_1    list_element_2    list_element_3    list_element_4

&{test_4_dictionary}    username=testuser    password=testpass

*** Test Cases ***
TEST
    [Tags]    priority_2
    Log My Username
	