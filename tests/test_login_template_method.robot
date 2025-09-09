*** Settings ***
Documentation    Data-driven login tests using Test Template for multiple users
Resource    ../resources/variables.resource
Resource    ../resources/keywords.resource
Test Teardown    Close Browser

*** Test Cases ***
Login With Valid Users
    [Template]    login should succeed
    # TODO implement the user handling logic here

Login With Invalid Users
    [Template]    login should fail
    # TODO implement the user handling logic here
