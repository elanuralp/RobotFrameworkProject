*** Settings ***
Documentation    All the page objects and keywords of landing page
Library                SeleniumLibrary
Resource                Generic.robot


*** Variables ***


*** Keywords ***

Verify items in the Checkout page and Proceed
    Click Element    css:.btn-success

