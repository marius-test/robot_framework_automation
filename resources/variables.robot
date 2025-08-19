*** Variables ***

# DATA
${BASE_URL}    https://www.saucedemo.com/
${BROWSER}    Chrome

# TIMERS
${NON_EXISTENT_ELEMENT}    id=non-existent-element  # for testing timeouts
${DEFAULT_TIMEOUT}    5

# LOGIN
&{USER_TYPE}
...    standard=standard_user
...    locked=locked_out_user
...    problem=problem_user
...    performance=performance_glitch_user
...    error=error_user
...    visual=visual_user
...    invalid=invalid_user

@{VALID_USERS}    standard    problem    performance    error    visual
@{INVALID_USERS}    locked    invalid

${PASSWORD}    secret_sauce
${WRONG_PASSWORD}    wrong_password

# empty variable used to iterate over a dictionary
${key}

# LOGIN PAGE LOCATORS
${LOGIN_LOGO}    class=login_logo
${LOGIN_BUTTON}    id=login-button
${USERNAME_FIELD}    id=user-name
${PASSWORD_FIELD}    id=password
${ERROR_CONTAINER}    class=error-message-container

# INVENTORY PAGE LOCATORS
${APP_LOGO}    class=app_logo
${ITEM_NAME}    class=inventory_item_name
${ITEM_TEXT}    class=inventory_item_desc
${ITEM_PRICE}    class=inventory_item_price
