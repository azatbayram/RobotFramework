*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup  CommonFunctionality.Start TestCase
Test Teardown  CommonFunctionality.Finish TestCase

*** Variables ***
${TEST_DATA} =  python

*** Test Cases ***
Verify basic search functionality
  [Documentation]  This test case verifies the basic search
  [Tags]  Functional

  HeaderPage.Input Search Text and Click Search   ${TEST_DATA}
  SearchResultsPage.Verify Search Results   ${TEST_DATA}

Verify advanced search functionality
  [Documentation]  This test case verifies the advanced search
  [Tags]  Functional

  HeaderPage.Click on Advanced Search Link
