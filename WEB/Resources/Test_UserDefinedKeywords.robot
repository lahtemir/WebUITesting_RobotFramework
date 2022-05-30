*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_text}  laptop
${verify_text}  Find your laptop
${low_price}    400
${high_prive}   600

*** Keywords ***
Find laptop and verify result
    Page should contain link   id:nav-logo-sprites
    Input text   id:twotabsearchtextbox   ${search_text}
    Click Element   id:nav-search-submit-button
    Page Should Contain   ${verify_text}

Filter the results
    Input Text   id:low-price   ${low_price}
    Input Text   id:high-price   600
    Click Element   id:a-autoid-1
    Click Element   id:a-autoid-0
    Click Element   id:s-result-sort-select_1

