*** Settings ***  # mandatory, declare documentation, libraries and resources here
Name    Test Template
Documentation    Robot Framework test suite template
Metadata    author    Marius B.
Resource    ../resources/variables.resource
Variables    ../resources/expected_values.py
Resource    ../resources/expected_values.resource
Resource    ../resources/keywords.resource
Test Teardown    Close Browser

*** Variables ***  # declare local variables here
${MESSAGE_TEXT}    test template

*** Test Cases ***  # mandatory, write test cases here
Test <Feature> <Behavior>
    [Tags]    template
    new improved log    ${MESSAGE_TEXT}    DEBUG

*** Keywords ***  # define local keywords here
new improved log
    [Arguments]    ${message}    ${level}=INFO
    Log    ${message}    ${level}

*** Comments ***
Remove unused sections, libraries, resources.

To execute a single test, run the following command in the terminal:
robot -d output --loglevel DEBUG tests\test.robot
