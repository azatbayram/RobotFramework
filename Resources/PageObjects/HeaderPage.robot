*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${search_text}  mobile
#@{search_text} =   book  travel  robot  gift
#&{search_text}  first=book  second=travel
${SearchTextBox}  //*[@id="gh-ac"]
${SearchButton}  //*[@id="gh-btn"]
${AdvancedSearchLink}  //*[@id="gh-as-a"]

*** Keywords ***
Input Search Text and Click Search
  [Arguments]  ${search_text}
  Input Text  ${SearchTextBox}  ${search_text}
  #Input Text  //*[@id="gh-ac"]  ${search_text}[0]
  #Input Text  //*[@id="gh-ac"]  ${search_text.first}
  Press Keys  ${SearchButton}  Return

Click on Advanced Search Link
  Click Element  ${AdvancedSearchLink}