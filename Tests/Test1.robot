*** Settings ***
Library  SeleniumLibrary
Resource  ../PO/General.robot
Resource  ../PO/DragAndDrop.robot
Resource  ../PO/DoubleClick.robot
Resource  ../PO/HoverOver.robot
Resource  ../PO/ClickAndHold.robot


*** Variables ***
${URL} =  http://webdriveruniversity.com/Actions/index.html
${BROWSER} =  Chrome


*** Test Cases ***
Different Actions
    General.Open website
    DragAndDrop.Drag and Drop Element
    DoubleClick.Double Click Screen
    HoverOver.Hover over Element
    ClickAndHold.Click and Hold Element
    ClickAndHold.Release click and Validate
    General.Close website
