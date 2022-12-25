*** Settings ***

*** Test Cases ***
Argument Test Case
  Arguments Demo Keyword  azat  1234

*** Keywords ***
Arguments Demo Keyword
  [Arguments]  ${arg1}  ${arg2}
  Log  ${arg1}
  Log  ${arg2}