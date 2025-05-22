*** Settings ***
Documentation       The CommonWeb file
Library             SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    open browser        about:blank         ${BROWSER}
    maximize browser window

End Web Test
    close all browsers