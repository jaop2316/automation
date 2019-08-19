*** Settings ***
Resource    resources.robot

*** Variables ***
${signbutton}       xpath = //*[@id="app"]/div/div[1]/div/div/a
${agencyNameInput}  css = #app > div > div.top-0.flex-center.bg-primary.padding-top-42.padding-bottom-42 > div > div > div:nth-child(4) > input[type=text]
${firstNameInput}   css = #app > div > div.top-0.flex-center.bg-primary.padding-top-42.padding-bottom-42 > div > div > div:nth-child(5) > input[type=text]
${lastNameInput}    css = #app > div > div.top-0.flex-center.bg-primary.padding-top-42.padding-bottom-42 > div > div > div:nth-child(6) > input[type=text]
${emailInput}      css = #app > div > div.top-0.flex-center.bg-primary.padding-top-42.padding-bottom-42 > div > div > div:nth-child(7) > input[type=text]
${phoneNumberInput}     css = #app > div > div.top-0.flex-center.bg-primary.padding-top-42.padding-bottom-42 > div > div > div:nth-child(8) > input[type=tel]
${addInput}     css = #app > div > div.top-0.flex-center.bg-primary.padding-top-42.padding-bottom-42 > div > div > div:nth-child(9)> input[type=text]
${citInput}     css = #app > div > div.top-0.flex-center.bg-primary.padding-top-42.padding-bottom-42 > div > div > div:nth-child(10) > input[type=text]
${currentDay}       Get Current Date   result_format=%d-%m-%M
${stateSelect}  css = #app > div > div.top-0.flex-center.bg-primary.padding-top-42.padding-bottom-42 > div > div > div.row > div.col-md-8 > div > div
${autoCompleteSelect}  css = #react-select-2-input
${statesList}   css = #app > div > div.top-0.flex-center.bg-primary.padding-top-42.padding-bottom-42 > div > div > div.row > div.col-md-8 > div > div > div > div.react-select__value-container.css-1hwfws3 > div.css-1g6gooi > div > div
${zipInput}     css = #app > div > div.top-0.flex-center.bg-primary.padding-top-42.padding-bottom-42 > div > div > div.row > div.col-md-4 > div > input[type=text]
${passInput}    css = #app > div > div.top-0.flex-center.bg-primary.padding-top-42.padding-bottom-42 > div > div > div:nth-child(12) > input[type=password]
${confirmPass}  css = #app > div > div.top-0.flex-center.bg-primary.padding-top-42.padding-bottom-42 > div > div > div:nth-child(13) > input[type=password]
${iAgreeCheck}  css = #app > div > div.top-0.flex-center.bg-primary.padding-top-42.padding-bottom-42 > div > div > div:nth-child(16) > div > label > input[type=checkbox]
${submitButton}     xpath = //*[@id="app"]/div/div[1]/div/div/div[13]/button
${thanksParagraph}  xpath = //*[@id="app"]/div/div[1]/div/div

*** Test Cases ***
TC_001 Login page open
     Open Browser and wait until logo is loaded
     Click Element      ${signbutton}
     Input Text         ${agencyNameInput}      Agency Automation
     Input Text         ${firstNameInput}      Charles
     Input Text         ${lastNameInput}     Wallace
     Input Text         ${emailInput}       testemail@yopmail.com
     Input Text         ${phoneNumberInput}       214-362-1842
    Input Text      ${addInput}     1867ErselStreet
     Input Text     ${citInput}     Plano
     Click Element      ${stateSelect}
      Input Text     ${autoCompleteSelect}     Texas
      Page Should Contain Element   ${statesList}
      Press Keys    None    ALT+ARROW_DOWN+RETURN
      Input Text    ${zipinput}     75074
      Input Text    ${passInput}    test123
      Input Text    ${confirmPass}    test123
      Click Element     ${iAgreeCheck}
      Sleep     5s
      Click Element  ${submitButton}
      Page Should Contain Element   Thanks







