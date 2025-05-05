*** Settings ***
Library         SeleniumLibrary

*** Keywords ***
Load
    go to                           https://demowebshop.tricentis.com/      chrome

Verify Page Loaded
    wait until page contains        Categories