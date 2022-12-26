*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demostrate Webelemets Operation Keywords in Robot Framework
   [Documentation]  TC to demostrate Webelemets Operation Keywords in Robot Framework

   Open Browser  https://www.google.com/  chrome  alias=CB
   Maximize Browser Window
   Sleep  3s

   ${attribute}  Get Element Attribute  name:btnK  value
   Log  ${attribute}

   Close Browser