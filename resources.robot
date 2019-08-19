*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}          chrome
${url}  https://rollkallportal-qa.azurewebsites.net
${rollkallLogo}     xpath =//*[@id="app"]/div/div[1]/div/h1/img
*** Keywords ***
Open Browser and wait until logo is loaded
    Open Browser            ${url}     ${browser}
    Page Should Contain Element     ${rollkallLogo}