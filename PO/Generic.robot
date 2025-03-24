*** Settings ***
Documentation    A resource file with reusable keywords and variables
...
...              The system specific keywords created here form our own
...              domain specific language. They utilize the keywords provided
...              by the imported SeleniumLibrary.
Library                SeleniumLibrary
Library                Collections





*** Variables ***
${user_name}           rahulshettyacademy
${invalid_password}    12345678
${valid_password}      learning
${url}                 https://rahulshettyacademy.com/loginpagePractise/
${browser_name}        Chrome





*** Keywords ***
open the browser with the Mortgage payment url
    Open Browser    ${url}    Chrome    options= add_experimental_option("detach",True)

open the browser with the url
    Open Browser    ${url}    ${browser_name}    options= add_experimental_option("detach",True)
    
Close Browser Session
    Close Browser

Wait Until element passed is located in the page
    [Arguments]    ${page_locator}
    Wait Until Element Is Visible    ${page_locator}