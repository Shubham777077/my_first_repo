*** Settings ***
Library     SeleniumLibrary
Documentation   Basic Search functinality

*** Variables ***

*** Keywords ***

*** Test Cases ***

First trial test for search

    [Documentation]     This test case verifies the basic search process

    Open Browser    https://www.ebay.com/   chrome
    Maximize Browser Window
    Sleep    2s
    Click Button    //*[@id="gh-ac"]
    Sleep    2s
    Input Text    //*[@id="gh-ac"]    mobile
    Sleep    2s
    Click Button    //*[@id="gh-btn"]
    Sleep    2s
    Page Should Contain    results for mobile
    Sleep    2s
    Close Browser
