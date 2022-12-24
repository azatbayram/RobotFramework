*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${search_text}  mobile
#@{search_text} =   book  travel  robot  gift
&{search_text}  first=book  second=travel

*** Keywords ***
Input Search Text and Click Search
  #Input Text  //*[@id="gh-ac"]  ${search_text}
  #Input Text  //*[@id="gh-ac"]  ${search_text}[0]
  Input Text  //*[@id="gh-ac"]  ${search_text.first}
  Press Keys  //*[@id="gh-btn"]  Return

Click on Advanced Search Link
  Click Element  //*[@id="gh-as-a"]