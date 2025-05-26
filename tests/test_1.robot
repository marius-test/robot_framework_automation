*** Settings ***
Documentation    This is my first test case in robot framework.
Library    OperatingSystem

*** Keywords ***

*** Variables ***

*** Test Cases ***
TEST1
    [Tags]    sanity
    Log    Hello World!
