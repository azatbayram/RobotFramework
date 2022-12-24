*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
  Input Text  //*[@id="gh-ac"]  mobile
  Press Keys  //*[@id="gh-btn"]  Return
  Page Should Contain  results for mobile

Filter Results by Condition
  Sleep  3s
  Press Keys  (//*[@style="display:inline-block"]/button)[1]  [Return]
  Sleep  3s
  Mouse Down  (//*[@style="display:inline-block"]/span/div/div)[2]
  Click Element  (//*[@style="display:inline-block"]/span/div/div)[2]

Verify Filter Results
  Element Should Contain  (//*[@style="margin-right:16px;"]/div/a/div)[1]  New