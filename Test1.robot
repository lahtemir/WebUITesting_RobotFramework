*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
TEST1
    [Documentation]  This is a test testcase on amazon.com

    Start test
    Find laptop and verify result
    Filter the results
    Finish test


*** Keywords ***
Start test
    Open Browser   https://www.amazon.com   chrome
    Maximize browser window

Find laptop and verify result
    Page should contain link   id:nav-logo-sprites
    Input text   id:twotabsearchtextbox   laptop
    Click Element   id:nav-search-submit-button
    Page Should Contain   Find your laptop

Filter the results
    Input Text   id:low-price   400
    Input Text   id:high-price   600
    Click Element   id:a-autoid-1
    Click Element   id:a-autoid-0
    Click Element   id:s-result-sort-select_1

Finish test
    Close Browser
