*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CLICK&HOLD_ELEMENT} =     id:click-box
${CLICK&HOLD_VALIDATION} =  Well done! keep holding that click now.....
${CLICK_RELEASE_VALIDATION} =  Dont release me!!!

*** Keywords ***
Click and Hold Element
    mouse down  ${CLICK&HOLD_ELEMENT}
    page should contain  ${CLICK&HOLD_VALIDATION}

Release click and Validate
    mouse up    ${CLICK&HOLD_ELEMENT}
    page should contain  ${CLICK_RELEASE_VALIDATION}