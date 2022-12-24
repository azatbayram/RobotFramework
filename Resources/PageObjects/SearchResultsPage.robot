*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage.robot


*** Variables ***
${search_result}  results for

*** Keywords ***
Verify Search Results
  #Page Should Contain  ${search_result} ${search_text}[0]
  #Page Should Contain  ${search_result} ${search_text}
  Page Should Contain  ${search_result} ${search_text.first}