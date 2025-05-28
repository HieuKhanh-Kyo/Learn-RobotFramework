*** Settings ***
Documentation       The PO file
Library             SeleniumLibrary


*** Variables ***
${LANDING_NAVIGATION_ELEMENT}          id=mainNav


*** Keywords ***
Navigate To
    go to           ${START_URL}

Verify Page Loaded
    wait until page contains element    ${LANDING_NAVIGATION_ELEMENT}