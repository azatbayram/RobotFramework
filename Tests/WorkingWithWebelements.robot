*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demostrate Webelemets Operation Keywords in Robot Framework
   [Documentation]  TC to demostrate Webelemets Operation Keywords in Robot Framework

   Open Browser  https://www.google.com/  chrome  alias=CB
   Maximize Browser Window
   Sleep  3s
#Get Element Attribute return specified attribute value
   ${attribute}  Get Element Attribute  name:btnK  value
   Log  ${attribute}
#Get Element Count return number of elemets with same locator
   ${count}  Get Element Count  name:btnK
   Log  ${count}
#Get Elemet Size return width and height of element
   ${width}  ${height}  Get Element Size  (//input[@class='gNO89b'])[2]
   Log  ${width}
   Log  ${height}

   ${GoogleSearch}=  Get WebElement  (//input[@class='gNO89b'])[2]
   Log  ${GoogleSearch}

   @{WebElements}  Get WebElements  //input[@class='gNO89b']

   Assign Id To Element  (//input[@class='gNO89b'])[2]  googleSearchButton
   Page Should Contain Element  (//input[@class='gNO89b'])[2]

   Element Should Be Visible  (//input[@class='gNO89b'])[2]
   Sleep  3s
#Input Text write specified text inside the box
   Input Text  //input[@name='q']  azat bayram
   Sleep  3s
#Clear Element Text clear text
   Clear Element Text  //input[@name='q']
   Sleep  3s

   Cover Element  (//input[@class='gNO89b'])[2]
   Sleep  3s

   Element Attribute Value Should Be  name:btnK  value  Google'da Ara
   Element Should Be Enabled  name:btnK

   Close Browser