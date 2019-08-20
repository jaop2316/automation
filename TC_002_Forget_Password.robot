*** Settings ***
Resource  resources.robot

*** Variables ***
${forgetPassLink}       xpath = //*[@id="app"]/div/div[1]/div/a
${emailInput}           xpath = //*[@id="Email"]
${sendButton}           xpath = //*[@id="btnSubmit"]
${successMessage}   xpath = //*[@id="frmForgotPassword"]/p
${validationSummary}    css = .validation-summary-errors
*** Test Cases ***
TC_001 Open Browser and load the portal
    Open Browser and wait until logo is loaded
TC_002 Open 'Forget password' form
    Click Element   ${forgetPassLink}
TC_003 Enter email
    Input Text      ${emailInput}       zuriel+agency@rollkall.com
TC_004 Submit form
    Click Element   ${sendButton}
TC_005 Sent a reset link page is displayed
    Run Keyword If  "${validationSummary}" == 'Invalid Email Address'
    ${validation}=  Get Text    ${validationSummary}
    Log to console      ${validation}
    ELSE
    Element Text Should Be  ${successMessage}    We have sent a password reset link to the email address specified. Please use that link to reset your password.
