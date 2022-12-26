*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demostrate Window Operation Keywords in Robot Framework
  [Documentation]  TC to demostrate Window Operation Keywords in Robot Framework

   Open Browser  https://www.salesforce.com/eu/  chrome  alia=CB
   Maximize Browser Window
   Sleep  3s

   Wait Until Element Is Visible  //body[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[6]/div[1]/div[1]/div[4]/div[1]/div[1]/div[1]/a[1]/span[1]
   Click Element  //body[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[6]/div[1]/div[1]/div[4]/div[1]/div[1]/div[1]/a[1]/span[1]

   @{WindowHandles}  Get Window Handles
   Sleep  3s

   @{WindowIndentifiers}  Get Window Identifiers
   Sleep  3s

   @{WindowNames}  Get Window Names
   Sleep  3s

   @{WindowTitles}  Get Window Titles
   Sleep  3s

   Set Window Position  100  200

   ${x}  ${y}  Get Window Position
   Log  ${x}
   Log  ${y}
   Sleep  3s

   Set Window Size  800  600
   ${width}  ${height}  Get Window Size
   Log  ${width}
   Log  ${height}
   Sleep  3s

   Switch Window  @{WindowHandles}[1]
   Log  @{WindowHandles}[1]
   Sleep  3s
   Close Window

   Switch Window  @{WindowHandles}[0]
   Log  @{WindowHandles}[0]
   Close Window
