*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_text}  mobile

*** Keywords ***
Input Search Text and Click Search
  Input Text  //*[@id="gh-ac"]  ${search_text}
  Press Keys  //*[@id="gh-btn"]  Return

Click on Advanced Search Link
  Click Element  //*[@id="gh-as-a"]