*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Scope.robot

*** Variables ***
${MY_VARIABLE}              this is my input data
${MY_LIST_VARIABLES}        Hello there     Value 2     Item 3

*** Test Cases ***
Variable demonstration
    Log     ${MY_VARIABLE}

Variable demonstration 2
    [Tags]    Current
    ${my_new_variable}  set variable    this is my direct variable
    log    ${my_new_variable}

List Variables
    [Tags]    List
    log     ${MY_LIST_VARIABLES}[0]
    log     ${MY_LIST_VARIABLES}[1]
    log     ${MY_LIST_VARIABLES}[2]

List Variables 2
    [Tags]    List
    ${my_new_list_variables}    create list    item 1    item 2      item 3
    log    ${my_new_list_variables}[0]
    log    ${my_new_list_variables}[1]
    log    ${my_new_list_variables}[2]

Create and log a variable
    ${a_variable}   set variable    some information
    

Access a variable from resources
    Log     ${MY_VARIABLE_RES}

Passing Variables to Keywords - User can search for products
    # Here we pass variable input data to a user-defined keyword
    # Try it: Change the URL and/or browser input values (chrome, firefox,..)
    # Begin Web Test      https://demowebshop.tricentis.com/      chrome

    ${url_and_browser}      set variable    https://www.google.com/?hl=vi       chrome
    Begin Web Test        ${url_and_browser}

*** Keywords ***
#Begin Web Test
#    [Arguments]     ${url}      ${browser}
#    open browser    ${url}      ${browser}
#    close browser

Begin Web Test
    [Arguments]      ${url_and_browser}
    open browser     ${url_and_browser}[0]      ${url_and_browser}[1]
    close browser