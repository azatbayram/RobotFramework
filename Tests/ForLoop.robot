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
  Sleep  2s

  Input Text  id:user-name  standard_user
  Input Text  id:password  secret_sauce
  Click Button  id:login-button

  @{results_onpage}  Get WebElements  //div[@class='inventory_item']

  FOR  ${element}  IN  @{results_onpage}
  ${text}  Get Text  ${element}
  Log  ${text}
  END

  Close Browser

