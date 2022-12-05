*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL} =            https://obstaclecourse.tricentis.com/Obstacles/23292
${BROWSER} =        Chrome
${PAGE_VERIFY} =    Test Automation Obstacle

*** Test Cases ***
Order ToDo list by task ID
    Open the browser
    Drag Tasks to Completed
    Verify
    Close the browser

*** Keywords ***

Open the browser
    open browser  ${URL}    ${BROWSER}
    maximize browser window
    page should contain  ${PAGE_VERIFY}

Drag Tasks to Completed
# While loop jolloin joka kierros lisätään +1 taskiin ja kohteen tr:ään?
    ${task} =   set variable    ${1}
    ${tr} =     set variable    ${2}
    WHILE       ${task} <= 6
        Drag And Drop   xpath://*[@id="todo-tasks"]/tbody/tr[@task="${task}"]     xpath://*[@id="completed-tasks"]/tbody/tr[${tr}]
        ${task} =   EVALUATE     ${task}+1
        ${tr} =   EVALUATE     ${tr}+1
    END

Verify
    page should contain  Hit me with the next riddle!


Close the browser
    close browser