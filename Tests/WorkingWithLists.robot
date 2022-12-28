*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.sugarcrm.com/uk/request-demo/
${browser}  chrome

*** Test Cases ***
Test Case to demostrate List Operation Keywords in Robot Framework
  [Documentation]   Test Case to demostrate List Operation Keywords in Robot Framework

  Open Browser  ${URL}  ${browser}
  Maximize Browser Window
  Sleep  2s
  Scroll Element Into View  //*[@id='field31']/div/select

  Page Should Contain List  //*[@id='field31']/div/select
  Page Should Not Contain List  //*[@id='field31']/div/selectt

  @{AllListItems}  Get List Items  //*[@id='field31']/div/select
  Log  ${AllLIstItems}[3]
  ${ListLabel}  Get Selected List Label  //*[@id='field31']/div/select
  Log  ${ListLabel}
  ${ListValue}  Get Selected List Value  //*[@id='field31']/div/select
  Log  ${ListValue}

  List Selection Should Be  //*[@id='field31']/div/select  How did you hear about us?

  Select From List By Index   //*[@id='field31']/div/select  1
  ${ListLabel1}  Get Selected List Label  //*[@id='field31']/div/select
  Log  ${ListLabel1}
  Sleep  2s

  Select From List By Label   //*[@id='field31']/div/select  YouTube
  ${ListLabel4}  Get Selected List Label  //*[@id='field31']/div/select
  Log  ${ListLabel4}
  Sleep  2s

  Close Browser