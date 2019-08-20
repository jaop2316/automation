*** Settings ***
Resource    resources.robot
Library  BuiltIn

*** Variables ***
${userinput}    xpath = //*[@id="app"]/div/div[1]/div/div/div[1]/span/*[@type='email']
${passinput}    xpath = //*[@id="app"]/div/div[1]/div/div/div[2]/span/*[@type='password']
${subButton}    xpath = //*[@id="app"]/div/div[1]/div/div/div[3]/button
${pageHeader}       xpath = //*[@id="app"]/div/div[2]/div[1]
${alertPop}         xpath = //*[@id="toast-container"]

*** Test Cases ***
TC_001 Open Browser and load the portal
    Open Browser and wait until logo is loaded
TC_002 Type the user's credentials (Agency user)
    Input Text           ${userinput}            zuriel+age@rollkall.com
    Input Text           ${passinput}            test123
TC_003 Submit login information
    Click Element        ${subButton}
TC_004 Jobs page is displayed
    Wait Until Page Contains     Jobs
TC_005 Check for alerts
    Wait Until Element Is Visible   ${alertPop}
    ${alert}=    Get Text  ${alertPop}
    Log       ${alert}


