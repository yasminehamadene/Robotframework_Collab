*** Settings ***
Library    SeleniumLibrary
Library    ../exemple.py
Test Teardown    Close Browser
Test Setup    Open Browser    http://www.saucedemo.com    chrome    

*** Keywords ***
Dire Bonjour
    [Arguments]    ${nom}
    Log To Console    Byby ${nom}

        

*** Test Cases ***
Saluer
    Dire Bonjour    Ouissem
    ${msg}    Yasmine1 Dis Bonjour A    cedric
    Log To Console    ${msg}   
 


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



    
    
    
    


