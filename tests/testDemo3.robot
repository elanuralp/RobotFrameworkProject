*** Settings ***
Documentation    To validate the logiin form
Library    SeleniumLibrary
Library    String
Test Setup    open the browser with the Mortgage payment url
Test Teardown    Close Browser
Resource        ../PO/Generic.robot


*** Variables ***
${Error_Message_Login}    css:.alert-danger


*** Test Cases ***
Validate Child window Functionality
    [Tags]    NEWFEATURE
    Select the link of Child window
    Verify the user is Switched to Child window
    Grab the Email id in the Child Window
    Switch to Parent window and enter the Email

*** Keywords ***
Select the link of Child window
    Sleep    3
    Click Element    css:.blinkingText

Verify the user is Switched to Child window
    Switch Window    NEW
    Sleep     2
    Element Text Should Be    css:h1    DOCUMENTS REQUEST

Grab the Email id in the Child Window
     ${text}=    Get Text    css:.red
     @{words}=    Split String     ${text}    at
     ${text_split}=    Get From List    ${words}    1
     log    ${text_split}
     @{words_2}=    Split String     ${text_split}
     ${email}=    Get From List    ${words_2}    0
     Set Global Variable    ${email}

Switch to Parent window and enter the Email
    Switch Window    MAIN
    Title Should Be    LoginPage Practise | Rahul Shetty Academy
    Input Text    id:username    ${email}






     

     




    

    
    




    

