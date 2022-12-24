*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBayUserDefinedKeywords.robot

Test Setup  CommonFunctionality.Start TestCase
Test Teardown  CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
  [Documentation]  This test case verifies basic search
  [Tags]  Functional

  eBayUserDefinedKeywords.Verify Search Results
  eBayUserDefinedKeywords.Filter Results by Condition
  eBayUserDefinedKeywords.Verify Filter Results

