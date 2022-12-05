*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${DOUBLECLICK_ELEMENT} =    xpath://*[@id="double-click"]/h2

*** Keywords ***
Double Click Screen
    double click element  ${DOUBLECLICK_ELEMENT}