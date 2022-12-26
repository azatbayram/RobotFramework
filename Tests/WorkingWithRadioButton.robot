*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case to demostrate Radio Button Operation Keywords in Robot Framework
  [Documentation]  Test Case to demostrate Radio Button Operation Keywords in Robot Framework

  Open Browser  http://practice.cybertekschool.com/radio_buttons  chrome
  Maximize Browser Window
  Sleep  3s

  Radio Button Should Be Set To  color  on
  #Select Radio Button key need two argument first is name second is value or id
  Select Radio Button  color  red
  Sleep  3s
  #look if any radio button is selected
  Radio Button Should Be Set To  color  on


  Close Browser