*** Settings ***
Documentation    To validate the logiin form
Library    SeleniumLibrary
Test Teardown    Close Browser
*** Variables ***
${Error_Message_Login}    css:.alert-danger



*** Test Cases ***
Validate UnSuccessful Login
    open the browser with the Mortgage payment url
    Fill the login Form
    Wait until it checks and display error message
    Verify error message is correct

*** Keywords ***
open the browser with the Mortgage payment url
    Create Webdriver    Chrome
    Go To    https://rahulshettyacademy.com/loginpagePractise/
Fill the login Form
    Sleep    2
    Input Text        id:username    rahulshetty
    Input Password    id:password    12345678
    Click Button      signInBtn
Wait until it checks and display error message
    Wait Until Element Is Visible    ${Error_Message_Login}
Verify error message is correct
    Element Text Should Be    ${Error_Message_Login}    Incorrect username/password.

    

    
    




    

