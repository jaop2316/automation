*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://rollkallportal-qa.azurewebsites.net
${userinput}    xpath = //*[@id="app"]/div/div[1]/div/div/div[1]/span/*[@type='email']
${passinput}    xpath = //*[@id="app"]/div/div[1]/div/div/div[2]/span/*[@type='password']
${subButton}    xpath = //*[@id="app"]/div/div[1]/div/div/div[3]/button


*** Test Cases ***
TC_001 Login page open
    Open Browser  ${url}  ${browser}
    Input Text           ${userinput}            zuriel+agency@rollkall.com
    Input Text           ${passinput}            test123
    Click Element        ${subButton}
