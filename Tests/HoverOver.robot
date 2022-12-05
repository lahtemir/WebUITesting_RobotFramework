*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${HOVEROVER_ELEMENT1} =     xpath://*[@id="div-hover"]/div[1]/button
${HOVEROVER_ELEMENT2} =     xpath://*[@id="div-hover"]/div[2]/button
${HOVEROVER_ELEMENT3} =     xpath://*[@id="div-hover"]/div[3]/button

${HOVER1_LINK} =    xpath://*[@id="div-hover"]/div[1]/div/a
${HOVER2_LINK} =    Link 1
${HOVER3_LINK1} =   xpath://*[@id="div-hover"]/div[3]/div/a[1]
${HOVER3_LINK2} =   xpath://*[@id="div-hover"]/div[3]/div/a[2]


*** Keywords ***
Hover over Element
    mouse over  ${HOVEROVER_ELEMENT1}
    page should contain link  ${HOVER1_LINK}
    mouse over  ${HOVEROVER_ELEMENT2}
    page should contain link  ${HOVER2_LINK}
    mouse over  ${HOVEROVER_ELEMENT3}
    page should contain link  ${HOVER3_LINK1}
    page should contain link  ${HOVER3_LINK2}