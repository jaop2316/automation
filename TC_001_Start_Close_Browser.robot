*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
TC_001 Browser Start and Close
   Open Browser    ${URL}     ${browser}
