*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple
${browser}  chrome

*** Test Cases ***
Test Case to demostrate List Operation Keywords in Robot Framework
  [Documentation]   Test Case to demostrate List Operation Keywords in Robot Framework

  Open Browser  ${URL}  ${browser}
  Maximize Browser Window
  Sleep  2s
  Select Frame  id:iframeResult

  Select All From List  id:cars
  Sleep  2s

  @{ListLabels}  Get Selected List Labels  id:cars
  Sleep  2s
  Unselect From List By Value  id:cars  saab
  Sleep  2s
  Unselect From List By Index  id:cars  0
  Sleep  2s
  Unselect From List By Label  id:cars  Audi
  Sleep  2s
  Unselect All From List  id:cars
  Sleep  2s

  Select From List By Index   id:cars  1
  ${ListLabel2}  Get Selected List Label  id:cars
  Log  ${ListLabel2}
  Sleep  2s

  Unselect From List By Index  id:cars  1
  Sleep  2s

  Select From List By Label   id:cars  Audi
  ${ListLabel4}  Get Selected List Label  id:cars
  Log  ${ListLabel4}
  Sleep  2s

  Unselect All From List  id:cars
  Sleep  2s

  List Should Have No Selections  id:cars

  Close Browser