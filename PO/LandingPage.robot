*** Settings ***
Documentation    All the page objects and keywords of landing page
Library                SeleniumLibrary
Resource                Generic.robot


*** Variables ***
${Error_Message_Login}    css:.alert-danger


*** Keywords ***

Fill the login Form
    [Arguments]    ${username}    ${password}
    Sleep    3
    Input Text        id:username    ${username}
    Input Password    id:password    ${password}
    Click Button      signInBtn

wait until Element is located in the page

    Wait Until element passed is located in the page   ${Error_Message_Login}

Verify error message is correct
    Element Text Should Be    ${Error_Message_Login}    Incorrect username/password.

Fill the Login Details and Login Form
    Sleep       2
    Input Text            id:username    rahulshettyacademy
    Input Password        id:password    learning
    Click Element         xpath://input[@value='user']
    Wait Until Element Is Visible        css:.modal-body
    Click Button        id:okayBtn
    Click Button        id:okayBtn
    Click Button        id:okayBtn
    Click Button        id:okayBtn

    Wait Until Element Is Not Visible    css:.modal-body    15s
    Select From List By Value    css:select.form-control    teach
    Select Checkbox    terms
    Checkbox Should Be Selected    terms
