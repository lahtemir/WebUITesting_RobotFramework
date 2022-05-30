*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${websiteURL}   https://www.amazon.com

*** Keywords ***
Start test
    Open Browser   ${websiteURL}   chrome
    Maximize browser window

Finish test
    Close Browser