*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}          chrome
${url}  https://rollkallportal-qa.azurewebsites.net
*** Keywords ***
Open Browser and wait until logo is loaded
    Open Browser            ${url}     ${browser}