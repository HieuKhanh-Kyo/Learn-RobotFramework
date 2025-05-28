*** Settings ***
Documentation       The Summary Script for Scripting Challenge to test Team page
Library             SeleniumLibrary

Resource            ../Resources/CommonWeb.robot
Resource            ../Resources/FrontOfficeApp.robot

Test Setup          CommonWeb.Begin Web Test
Test Teardown       CommonWeb.End Web Test

# run the script: robot -d results tests/front-office.robot

*** Variables ***
${BROWSER}          chrome
${START_URL}        https://automationplayground.com/front-office/

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]    This is TestCase 1
    [Tags]             TC1
    FrontOfficeApp.Going to Landing Page
    FrontOfficeApp.Go to "Team" page

"Team" page should match requirements
    [Documentation]    This is TestCase 2
    [Tags]             TC2
    log                executing tc2
    FrontOfficeApp.Going to Landing Page
    FrontOfficeApp.Go to "Team" page
    FrontOfficeApp.Validate "Team" page


