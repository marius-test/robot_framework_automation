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
${PASSWORD}    secret_sauce

# LOGIN PAGE LOCATORS
${LOGIN_LOGO}    class=login_logo
${LOGIN_BUTTON}    id=login-button
${USERNAME_FIELD}    id=user-name
${PASSWORD_FIELD}    id=password
