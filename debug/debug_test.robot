*** Settings ***  # mandatory, declare documentation, libraries and resources here
Resource    ../resources/variables.robot
Resource    ../resources/expected_values.robot
Resource    ../resources/keywords.robot
Test Teardown    Close Browser

*** Variables ***  # declare local variables here

*** Test Cases ***  # mandatory, write test cases here
Test <Feature> <Behavior>
    [Tags]    debug
    Log    "debug test"

*** Keywords ***  # define local keywords here

# to execute a single test, run the following command in the terminal:
# robot -d output --loglevel DEBUG tests\test.robot
