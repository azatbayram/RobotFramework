*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case to demostrate Frame Operation Keywords in Robot Framework
  [Documentation]  Test Case to demostrate Frame Operation Keywords in Robot Framework

  Open Browser  http://practice.cybertekschool.com/iframe  chrome
  Maximize Browser Window
  Sleep  3s

  Select Frame  id:mce_0_ifr

  Current Frame Should Contain  Your content goes

  Input Text  id:tinymce  Azat was here
  Sleep  3s

  Unselect Frame

  Frame Should Contain  id:mce_0_ifr  Azat was here

  Close Browser