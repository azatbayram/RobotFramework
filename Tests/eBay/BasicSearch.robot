*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
  [Documentation]  This test case verifies basic search
  [Tags]  Functional

  Start TestCase
  Verify Search Results
  Finish TestCase

*** Keywords ***
Start TestCase
  Open Browser  https://www.ebay.com/  chrome
  Maximize Browser Window

Verify Search Results
  Input Text  //*[@id="gh-ac"]  mobile
  Press Keys  //*[@id="gh-btn"]  Return
  Page Should Contain  results for mobile

Finish TestCase
  Close Browser