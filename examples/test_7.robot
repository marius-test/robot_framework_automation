*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Wikipedia homepage
    Open Browser    https://en.wikipedia.org/wiki/Main_Page    Chrome
    Sleep    5
    [Teardown]    Close Browser

*** Keywords ***
