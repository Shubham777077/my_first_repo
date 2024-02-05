*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/eBay_basic_open_close_function.robot
Resource  ../../Resources/eBay_UserdefinedKeywords.robot

Test Setup  Start Test
Test Teardown  End Test

# This helps in executing test even after failure, i.e if any step in middle fails,
# the test will proceed further and will not stop in middle at failure.

*** Test Cases ***
Basic search using Resources

    Verify Test
    Filter result by condition
    Verify Filter Results
