*** Settings ***
Documentation  Page Object Model Implementation
Resource  ../../Resources/eBay_UserdefinedKeywords.robot
Resource  ../../Resources/eBay_basic_open_close_function.robot
Resource  ../../Resources/PageObjects/header_page.robot
Resource  ../../Resources/PageObjects/home_page.robot
Resource    user_defined_Keywords.robot

Test Setup  eBay_basic_open_close_function.Start Test
Test Teardown  eBay_basic_open_close_function.End Test

*** Variables ***

*** Keywords ***

*** Test Cases ***
Using Page Object Model

    header_page.Input Search text and Click Search

Using POM for advanced search

    header_page.Advanced Search

Using POM for Home Page

    home_page.Home Page