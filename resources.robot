*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}          chrome
${url}              https://www.google.com.ec/
${googleElement}    css= #hplogo
${Input}            css=#lst-ib
${Button}           css=#tsf > div.tsf-p > div.jsb > center > input[type="submit"]:nth-child(1)
${SearchTitle}

*** Keywords ***
Open Browser and wait until logo is loaded
    Open Browser            ${url}     ${browser}
    Title Should Be         Google
    Page Should Contain Element         ${googleelement}