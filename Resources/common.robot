*** Settings ***
Library  SeleniumLibrary
Resource  ../TestData/ConfigData.robot

*** Variables ***
${url}  https://www.saucedemo.com/
${browser}  chrome
*** Keywords ***
Start TestCase
  Open Browser  ${url}  ${browser}
  Maximize Browser Window
  Sleep  3s

Finish TestCase
  Close Browser