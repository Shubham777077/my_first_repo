*** Settings ***
Library     SeleniumLibrary
Documentation   Basic Search functinality

*** Variables ***

*** Test Cases ***

First trial test for search

    [Documentation]     This test case verifies the basic search process

    Start Test
    Verify Test
    Filter result by condition
#    Verify Filter Results
    End Test

*** Keywords ***

Start Test
    Open Browser    https://www.ebay.com/   chrome
    Maximize Browser Window
    Sleep    2s

Verify Test
    Click Button    //*[@id="gh-ac"]
    Sleep    2s
    Input Text    //*[@id="gh-ac"]    mobile
    Sleep    2s
    Click Button    //*[@id="gh-btn"]
    Sleep    2s
    Page Should Contain    results for mobile
    Sleep    2s

Filter result by condition
    Click Element    //*[@id="s0-53-16-6-3-4[0]-2-2-1-list"]/li[4]/div/a/div
    Sleep    2s
    Click Element    //*[@id="item2d6e77bae4"]/div/div[2]/a/div/span
    Sleep    5s

Verify Filter Results
    Element Should Contain  //*[@id="mainContent"]/div/div[5]/label/span  Quantity

End Test
    Close Browser

