*** Settings ***
Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/Test_UserDefinedKeywords.robot

*** Variables ***

*** Test Cases ***
TEST1
    [Documentation]  This is a test testcase on amazon.com

    Start test
    Find laptop and verify result
    Filter the results
    Finish test





