*** Settings ***
Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/Test_UserDefinedKeywords.robot

Test Setup  Start test
Test Teardown   Finish test



*** Variables ***

*** Test Cases ***
TEST1
    [Documentation]  This is a test testcase on amazon.com

    Find laptop and verify result
    Filter the results





