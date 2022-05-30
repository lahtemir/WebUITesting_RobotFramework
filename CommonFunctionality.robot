*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Start test
    Open Browser   https://www.amazon.com   chrome
    Maximize browser window

Finish test
    Close Browser