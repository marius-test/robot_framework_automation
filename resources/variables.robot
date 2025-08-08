*** Variables ***
# DATA
${BASE_URL}    https://www.saucedemo.com/
${BROWSER}    Chrome
${DEFAULT_TIMEOUT}    5

# LOCATORS
${NON_EXISTENT_ELEMENT}    id=non-existent-element  # for testing timeouts
${LOGIN_LOGO}    class=login-logo
${LOGIN_BUTTON}    id=login-button
${USERNAME_FIELD}    id=user-name
${PASSWORD_FIELD}    id=password
