*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case to demostrate Checkbox Operation Keywords in Robot Framework
  [Documentation]  Test Case to demostrate Checkbox Operation Keywords in Robot Framework

  Open Browser  http://practice.cybertekschool.com/checkboxes  chrome
  Maximize Browser Window
  Sleep  3s

  Page Should Contain Checkbox  id:box1
  Page Should Not Contain Checkbox  id:box3

  Select Checkbox  id:box1
  Sleep  3s

  Unselect Checkbox  id:box2
  Sleep  3s

  Checkbox Should Be Selected  id:box1
  Checkbox Should Not Be Selected  id:box2

  Close Browser