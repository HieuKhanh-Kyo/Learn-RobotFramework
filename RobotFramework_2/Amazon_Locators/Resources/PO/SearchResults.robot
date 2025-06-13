*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    [Arguments]  ${SearchTerm}
    Wait Until Page Contains  ${SearchTerm}

Verify Product Count
    [Arguments]  ${ExpectedProductCount}
    ${actual_count}=    Get Element Count    xpath=//li[contains(@id, "result_")]
    Should Be Equal As Numbers    ${actual_count}    ${ExpectedProductCount}

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Click Link  css=#result_0 a.s-access-detail-page