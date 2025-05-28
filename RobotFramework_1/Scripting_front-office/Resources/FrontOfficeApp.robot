*** Settings ***
Documentation       The FrontOfficeApp file
Library             SeleniumLibrary

Resource            ../Resources/PO/Landing.robot
Resource            ../Resources/PO/Team.robot
Resource            ../Resources/PO/TopNav.robot

*** Variables ***


*** Keywords ***
Going to Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded

Go to "Team" page
    TopNav.Select "Team" link
    Team.Verify Page Loaded

Validate "Team" page
    Team.Validate Page Contain