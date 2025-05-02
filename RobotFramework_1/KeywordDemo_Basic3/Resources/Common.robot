*** Settings ***
Library         SeleniumLibrary

*** Keywords ***

Insert Testing Data
    Custom Keyword 1
    Custom Keyword 2

Custom Keyword 1
    log    doing keyword 1

Custom Keyword 2
    log    dong keyword 2

Begin Web Test
    open browser                    about:blank                                 chrome
    maximize browser window

End Web Test
    close browser

Cleanup Testing Data
    log     I am cleaning up the test data...