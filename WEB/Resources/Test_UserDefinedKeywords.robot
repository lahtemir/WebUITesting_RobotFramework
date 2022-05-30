*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_text}  laptop
${verify_text}  Find your
${low_price}  300
${high_price}  600

*** Keywords ***
Find laptop and verify result
    Page should contain link   id:nav-logo-sprites
    Input text   id:twotabsearchtextbox   ${search_text}
    Click Element   id:nav-search-submit-button
    Page Should Contain   ${verify_text} ${search_text}

Filter the results
    Input Text   id:low-price   ${low_price}
    Input Text   id:high-price   ${high_price}
    Click Element   id:a-autoid-1
    Click Element   id:a-autoid-0
    Click Element   id:s-result-sort-select_1

