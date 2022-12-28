*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://practice.cybertekschool.com/hovers
${browser}  chrome

*** Test Cases ***
Test Case to demostrate Implicit Wait in Robot Framework
  [Documentation]   Test Case to demostrate Implicit Wait in Robot Framework
  Open Browser  ${URL}  ${browser}
  Maximize Browser Window
  Sleep  2s

  ${default_implicit_wait}  Get Selenium Implicit Wait
  Set Selenium Implicit Wait  20s
  ${custom_implicit_wait}  Get Selenium Implicit Wait

  Mouse Over  //div[@class="figure"][2]
  Mouse Over  //div[@class="figure"][3]
  Mouse Over  //div[@class="figure"][1]

  Sleep  2s
  Close Browser