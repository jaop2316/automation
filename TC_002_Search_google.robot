*** Settings ***
Resource        resources.robot

*** Test Cases ***
TC_002_Search_google
    Open Browser and wait until logo is loaded
    Input Text           ${Input}            casos de prueba
    Click Button         ${Button}
    Title Should Be      casos de prueba - Buscar con Google
    Close Browser

TC_001_Google_without_input
    Open Browser and wait until logo is loaded
    Click Element           ${googleelement}
    Close Browser