*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}          chrome
${url}  https://rollkallportal-qa.azurewebsites.net
${rollkallLogo}     xpath =//*[@id="app"]/div/div[1]/div/h1/img
${profileImage}     xpath =//*[@id="c7c4bbfb-0829-45ff-8c08-70a46e965d25"]
*** Keywords ***
Open Browser and wait until logo is loaded
    Open Browser            ${url}     ${browser}
    Page Should Contain Element     ${rollkallLogo}
    Sleep  2s
Close Browser and Logout
     Wait Until Element Is Not Visible   xpath = //*[@id="toast-container"]  10s
     Click Element   css = .navbar .dropdown.user-options .dropdown-toggle .user-container
     Click Element  css = #app > div > div:nth-child(1) > nav > div > div.navbar-collapse.collapse > ul.nav.navbar-nav.navbar-right > li > ul > li:nth-child(7)
