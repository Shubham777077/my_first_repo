*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/eBay_basic_open_close_function.robot
Resource  ../../Resources/eBay_UserdefinedKeywords.robot

*** Test Cases ***
Basic search using Resources

    Start Test
    Verify Test
    Filter result by condition
    Verify Filter Results
    End Test