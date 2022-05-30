*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_text}  laptop
${verify_text}  Find your
@{low_price}  300   400   500
@{high_price}  600   700   800

*** Keywords ***
Find laptop and verify result
    Page should contain link   id:nav-logo-sprites
    Input text   id:twotabsearchtextbox   ${search_text}
    Click Element   id:nav-search-submit-button
    Page Should Contain   ${verify_text} ${search_text}

Filter the results
    Input Text   id:low-price   ${low_price}[1]
    Input Text   id:high-price   ${high_price}[2]
    Click Element   id:a-autoid-1
    Click Element   id:a-autoid-0
    Click Element   id:s-result-sort-select_1

