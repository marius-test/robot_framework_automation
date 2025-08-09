*** Settings ***  # mandatory, declare libraries and resources here
Resource   ../resources/variables.robot
Resource   ../resources/keywords.robot
Library    OperatingSystem

*** Variables ***  # declare variables used in tests and keywords here

*** Test Cases ***  # mandatory, write test cases here
Log Message
    Log    ${USER_TYPE}[standard]

*** Keywords ***  # define reusable keywords here

# to execute a single test, run the following command in the terminal:
# robot -d output --loglevel DEBUG tests\test.robot
