*** Settings ***
Library    OperatingSystem

*** Variables ***

${test_variable_1}    dolorem ipsum dolor sit amet
${test_variable_2}    consectetur adipiscing elit

@{test_list}    sed    do    eiusmod    tempor

&{test_dictionary_1}    username=testuser1    password=testpass1
&{test_dictionary_2}    username=testuser2    password=testpass2

*** Keywords ***

Log username
    [Arguments]    ${argument_1}
    Log    ${argument_1}

Log password
    [Arguments]    ${argument_1}
    Log    ${argument_1}

Log username and password
    [Arguments]    ${argument_1}    ${argument_2}
    Log    ${argument_1}
    Log    ${argument_2}
