*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/common.robot

Suite Setup  common.Start TestCase
Suite Teardown  common.Finish TestCase
Test Template  Invalid Login Scenarios

*** Test Cases ***                                         USERNAME           PASSWORD        ERROR MESSAGE
Verify Login Fails - Blank username abd password           ${EMPTY}           ${EMPTY}        Epic sadface: Username is required
Verify Login Fails - Wrong username                        standard_us        secret_sauce    Epic sadface: Username and password do not match any user in this service
Verify Login Fails - LockedOut user                        locked_out_user    secret_sauce    Epic sadface: Sorry, this user has been locked out
Verify Login Fails - Wrong password                        standard_user      secret_sau      Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Wrong username and password           locked_out_us      secret_sau      Epic sadface: Username and password do not match any user in this service


*** Keywords ***
Invalid Login Scenarios
  [Arguments]  ${username}  ${password}  ${error_msg}
  Input Text  ${txtbox_username}  ${username}
  Input Text  ${txtbox_password}  ${password}
  Click Button  ${btn_login}
  Element Should Contain  ${txt_error}  ${error_msg}
