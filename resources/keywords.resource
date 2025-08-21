*** Settings ***
Resource    ../resources/variables.resource
Library    SeleniumLibrary
Library    Collections

*** Keywords ***

open login page
    Open Browser    ${BASE_URL}    ${BROWSER}
    Wait Until Element Is Visible    ${LOGIN_LOGO}    timeout=${DEFAULT_TIMEOUT}

login
    [Arguments]    ${username}    ${password}
    open login page
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Click Button    ${LOGIN_BUTTON}

open inventory page
    [Arguments]    ${username}    ${password}
    login    ${username}    ${password}
    Wait Until Element Is Visible    ${APP_LOGO}    timeout=${DEFAULT_TIMEOUT}

validate inventory items
    [Arguments]    ${expected_items}    ${username}    ${password}

    # open the inventory page with the provided username and password
    open inventory page    ${username}    ${password}

    # grab all the web elements for item names, descriptions, and prices
    ${names}=    Get WebElements    ${ITEM_NAME}
    ${descriptions}=    Get WebElements    ${ITEM_DESCRIPTION}
    ${prices}=    Get WebElements    ${ITEM_PRICE}

    # get the number of expected items from the list of dictionaries
    ${c}=    Get Length    ${expected_items}

    # loop through each item index
    FOR    ${i}    IN RANGE    ${c}
        # get the expected item dictionary at the current index
        ${expected}=    Get From List   ${expected_items}   ${i}

        # extract the actual name, description, and price from the web elements
        ${name}=    Get Text    ${names}[${i}]
        ${description}=    Get Text    ${descriptions}[${i}]
        ${price}=    Get Text    ${prices}[${i}]

        # compare the actual values with the expected values from the Python dict
        Should Be Equal    ${name}    ${expected['name']}
        Should Be Equal    ${description}    ${expected['description']}
        Should Be Equal    ${price}    ${expected['price']}
    END
