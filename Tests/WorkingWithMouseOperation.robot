*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://practice.cybertekschool.com/hovers
${browser}  chrome

*** Test Cases ***
Test Case to demostrate Mouse Operation Keywords in Robot Framework
  [Documentation]   Test Case to demostrate Mouse Operation Keywords in Robot Framework

  Open Browser  ${URL}  ${browser}
  Maximize Browser Window
  Sleep  2s

  Mouse Over  //div[@class="figure"][2]
  Mouse Over  //div[@class="figure"][3]
  Mouse Over  //div[@class="figure"][1]
  Sleep  2s

  Go To  http://practice.cybertekschool.com/drag_and_drop
  Sleep  2s

  Drag And Drop  id:column-a  id:column-b

  Sleep  2s
  Close Browser