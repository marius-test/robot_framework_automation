*** Settings ***  # mandatory, declare documentation, libraries and resources here
Documentation    Robot Framework test suite template
Resource    ../resources/variables.resource
Variables    ../resources/expected_values.py
Resource    ../resources/expected_values.resource
Resource    ../resources/keywords.resource
Test Teardown    Close Browser

*** Variables ***  # declare local variables here

*** Test Cases ***  # mandatory, write test cases here
Test <Feature> <Behavior>
    [Tags]    template
    Log    "test template"

*** Keywords ***  # define local keywords here

# to execute a single test, run the following command in the terminal:
# robot -d output --loglevel DEBUG tests\test.robot

*** Comments ***
Robot Framework test suite template
