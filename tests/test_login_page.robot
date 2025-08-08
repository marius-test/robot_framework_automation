*** Settings ***
Resource   ../resources/variables.robot
Resource   ../resources/keywords.robot

*** Test Cases ***
Login Successful
    Open Login Page
    [Teardown]    Close Browser  # runs even if the test fails
