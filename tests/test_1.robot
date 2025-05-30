*** Settings ***
Documentation    This is my first test case in robot framework.
Library    OperatingSystem

*** Keywords ***

*** Variables ***
${test_1_variable_1}    dolorem ipsum dolor sit amet
${test_1_variable_2}    consectetur adipiscing elit

*** Test Cases ***
TEST1
    [Tags]    sanity
    Log    ${test_1_variable_1}
    Log    ${test_1_variable_2}
    