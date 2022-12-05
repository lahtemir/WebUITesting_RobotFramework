*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${DRAG&DROP_ELEMENT} =   xpath://*[@id="draggable"]/p
${DRAG&DROP_TARGET} =    xpath://*[@id="droppable"]/p/b
${DRAG&DROP_VALIDATION} =  Dropped!


*** Keywords ***
Drag and Drop Element
    mouse down  ${DRAG&DROP_ELEMENT}
    mouse over  ${DRAG&DROP_TARGET}
    mouse up    ${DRAG&DROP_TARGET}
    page should contain  ${DRAG&DROP_VALIDATION}