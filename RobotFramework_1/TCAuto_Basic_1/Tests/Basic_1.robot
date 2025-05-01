*** Settings ***
Documentation       <name of document of suite>
Library             SeleniumLibrary

#run the script:    E:\Python\Study_RobotFramework\TCAuto_Basic_1         robot -d results tests/basic_1.robot

*** Variables ***



*** Test Cases ***
<name of test>
    [Documentation]         <name of documentation of test>
    [Tags]                  1006     Smoke       Contact

#initialize Selenium
    Set selenium speed      .2s
    Set selenium timeout    6s

#open the browser
    log                     <>
    Open browser            <link>    chrome

#resize browser window for recording
    Maximize Browser Window

    page should contain     <content of page>

    Input Text              name=username   <username>
    input text              name=password   <password>
    click link              <name of link>/ ...~element~~~
    click element           id=<id>/    name=<name>/    css=<copy selector>/    xpath=<copy xpath>/    (href=)<...>
    page should contain


    select from list by value       id=<of field name>      <name of option>

    select radio button             <name of field>     <name of radio>

    select checkbox                 name=<name of checkbox>

    click button                    <name of button>


#finish browser
    sleep                   3s
    close browser


*** Keywords ***
