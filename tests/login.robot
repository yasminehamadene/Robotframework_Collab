*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser    http://www.saucedemo.com    chrome   
Test Teardown    Close Browser


*** Test Cases ***
Login valid
    [Documentation]    Test case to verify valid login functionality
    [Tags]    valid
    Input Text    id:user-name    standard_user
    Input Password    id:password    secret_sauce
    Click Button    id:login-button
    Location Should Contain    inventory

Login invalid
    [Tags]    invalid
    Input Text    id:user-name    standard_user
    Input Password    id:password    secret_saue
    Click Button    id:login-button
    Element Should Be Visible    css:[data-test=error]



    
    
    
    


