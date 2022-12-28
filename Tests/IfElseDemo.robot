*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.saucedemo.com/
${browser}  chrome

*** Test Cases ***
Test Case to demostrate If Else in Robot Framework
  [Documentation]   Test Case to demostrate If Else in Robot Framework
  Open Browser  ${URL}  ${browser}
  Maximize Browser Window
  Set Selenium Speed  1s

  Input Text  id:user-name  standard_user
  Input Text  id:password  secret_sauce
  Click Button  id:login-button

  ${items_on_page}  Get Element Count  //div[@class='inventory_item']

  Run Keyword If  ${items_on_page} == 10  Test Keyword 1
  ...  ELSE IF  ${items_on_page} < 10 and ${items_on_page} > 6  Test Keyword 2
  ...  ELSE  Test Keyword 3

*** Keywords ***
Test Keyword 1
   Log To Console  Executed Keyword1 - Found items as expected
   Close Browser
Test Keyword 2
   Log To Console  Executed Keyword2 - Found items less than 10
   Close Browser
Test Keyword 3
   Log To Console  Executed Keyword3 - Exception
   Close Browser





