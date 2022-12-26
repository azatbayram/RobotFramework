*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demostrate Browser Operation Keywords in Robot Framework
  [Documentation]  TC to demostrate Browser Operation Keywords in Robot Framework

    Open Browser  https://www.google.com/  chrome  alias=CB
    Maximize Browser Window
    Sleep  3s
    Open Browser  about:blank  safari  alias=SB
    Sleep  3s

    &{browser_alias}  Get Browser Aliases
    Log  ${browser_alias}[CB]
    Sleep  3s

    @{browser_id}  Get Browser Ids
    Log  ${browser_id}[1]
    Sleep  3s

    Switch Browser  1
    Input Text  //body/div[1]/div[3]/form[1]/div[1]/div[1]/div[1]/div[1]/div[2]/input[1]  AzatBayram
    Sleep  3s

    Switch Browser  ${browser_alias}[SB]
    Go To  https://www.salesforce.com/eu/
    Sleep  3s

    Close All Browsers


