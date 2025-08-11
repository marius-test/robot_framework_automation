*** Settings ***
Documentation     This file contains reusable variables and keywords that can be shared and used in different tests to keep things organized and avoid repetition.
Library    OperatingSystem
Library    SeleniumLibrary

*** Variables ***
# string variables
${test_variable_1}    dolorem ipsum dolor sit amet
${test_variable_2}    consectetur adipiscing elit

# list variable with multiple string items
@{test_list}    sed    do    eiusmod    tempor

# two dictionary variables with username and password pairs
&{test_dictionary_1}    username=testuser1    password=testpass1
&{test_dictionary_2}    username=testuser2    password=testpass2

*** Keywords ***
log username
    [Arguments]    ${argument_1}
    # log the provided username argument
    Log    ${argument_1}

log password
    [Arguments]    ${argument_1}
    # log the provided password argument
    Log    ${argument_1}

log username and password
    [Arguments]    ${argument_1}    ${argument_2}
    # log the provided username and password arguments
    Log    ${argument_1}
    Log    ${argument_2}
