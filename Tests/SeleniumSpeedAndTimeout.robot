*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://practice.cybertekschool.com/hovers
${browser}  chrome

*** Test Cases ***
Test Case to demostrate Mouse Operation Keywords in Robot Framework
  [Documentation]   Test Case to demostrate Mouse Operation Keywords in Robot Framework
#Selenium Speed is duration between each Selenim commands
#Selenium Timeout is duration that selenium wait for each Selenium commands
  Open Browser  ${URL}  ${browser}
  Maximize Browser Window
  Sleep  2s
  ${DefaultSpeed}  Get Selenium Speed
  ${DefaultTimeout}  Get Selenium Timeout
  Set Selenium Speed  3s
  Set Selenium Timeout  7s
  ${ModifiedSpeed}  Get Selenium Speed
  ${ModifiedTimeout}  Get Selenium Timeout

  Mouse Over  //div[@class="figure"][2]
  Mouse Over  //div[@class="figure"][3]
  Mouse Over  //div[@class="figure"][1]

  Sleep  2s
  Close Browser