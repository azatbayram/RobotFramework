#Variable Scopes

#Global Scope
#Global variables are available everywhere in the test data

#Test Suite Scope
#Variables with test suite scope are available anywhere in the test suite
#where they are defined or imported

#Test Case Scope
#Variables with test case scope are visible in the
#test case and in all user keywords the test uses

#Local Scope
#Test case or keywords have a local variable scope
#that is not seen by other tests or keywords

*** Settings ***

*** Variables ***
${VARIABLE_DEMO} =  This is GLOBAL variable.

*** Test Cases ***
This is demo test 1
   ${variable_demo} =  Set Variable  This is TESTCASE variable
   Log  ${VARIABLE_DEMO}

This is demo test 2
   Log  ${VARIABLE_DEMO}

This is demo test 3
   This is demo keyword

*** Keywords ***
This is demo keyword
   [Arguments]  ${variable_demo}=This is KEYWORD variable
   Log  ${VARIABLE_DEMO}
