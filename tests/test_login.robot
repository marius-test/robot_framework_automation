*** Settings ***
Resource   ../resources/variables.robot
Resource   ../resources/keywords.robot

*** Test Cases ***
Login Successful
    Open Login Page
    Input Text    ${USERNAME_FIELD}    ${USER_TYPE}[standard]
    Sleep    5
    [Teardown]    Close Browser  # runs even if the test fails
