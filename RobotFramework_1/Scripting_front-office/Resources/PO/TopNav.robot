*** Settings ***
Documentation       The PO file
Library             SeleniumLibrary


*** Variables ***
${TOPNAV_TEAM_LINK}     xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a


*** Keywords ***
Select "Team" link
#    click link          Team
    click element       ${TOPNAV_TEAM_LINK}
