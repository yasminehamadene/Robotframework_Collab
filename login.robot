*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Valid Login Test
    [Documentation]    Test a valid login scenario.
    Open Browser    https://saucedemo.com    chrome
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    id=login-button
    Location Should Contain    inventory.html

Invalid Login Test
    [Documentation]    Test an invalid login scenario.
    Open Browser    https://saucedemo.com    chrome
    Input Text    id=user-name    invaliduser
    Input Text    id=password    wrongpassword
    Click Button    id=login-button
    Element Should Be Visible    css=[data-teste=error] 