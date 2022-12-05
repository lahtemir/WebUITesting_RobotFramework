*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL} =  http://webdriveruniversity.com/Actions/index.html
${BROWSER} =  Chrome


*** Keywords ***
Open website
    open browser   ${URL}   ${BROWSER}
    maximize browser window


Close website
    close browser