*** Settings ***
Library         SeleniumLibrary

*** Keywords ***

Begin Web Test
    open browser                    about:blank       chrome
    maximize browser window

End Web Test
    close browser