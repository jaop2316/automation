*** Settings ***
Resource  resources.robot

*** Variables ***
${forgetPassLink}       xpath = //*[@id="app"]/div/div[1]/div/a
${emailInput}           xpath = //*[@id="Email"]
${sendButton}           xpath = //*[@id="btnSubmit"]
*** Test Cases ***
TC_001 Forget_Password
    Open Browser and wait until logo is loaded
    Click Element   ${forgetPassLink}
    Input Text      ${emailInput}       fakeuser3007@yopmail.com
    Click Element   ${sendButton}
    Wait Until Page Contains    Forgot Password
    Sleep   3s