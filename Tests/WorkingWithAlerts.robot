*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://practice.cybertekschool.com/javascript_alerts
${browser}  chrome

*** Test Cases ***
Test Case to demostrate Handler Alert Operation Keywords in Robot Framework
  [Documentation]   Test Case to demostrate Handler Alert Operation Keywords in Robot Framework

  Open Browser  ${URL}  ${browser}
  Maximize Browser Window
  Sleep  2s

  Click Element  //button[@onclick='jsAlert()']
  Sleep  2s
  Handle Alert

  Click Element  //button[@onclick='jsConfirm()']
  Sleep  2s
  Handle Alert  DISMISS  timeout=3 s

  Click Element  //button[@onclick='jsPrompt()']
  Sleep  2s
  Input Text Into Alert  azatbayram  ACCEPT  timeout=3 s


  Sleep  2s
  Close Browser