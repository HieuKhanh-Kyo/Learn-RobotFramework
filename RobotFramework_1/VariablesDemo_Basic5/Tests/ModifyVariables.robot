*** Settings ***
Documentation       Break Up Script Into Keyword Example
Library             SeleniumLibrary

Resource            ../Resources/Common.robot
Resource            ../Resources/DemoVariables_gui.robot

Test Setup          Common.Begin Web Test
Test Teardown       Common.End Web Test

*** Variables ***
${BROWSER}      chrome
${START_URL}    https://demowebshop.tricentis.com/
${SEARCH_TERM}  laptop

*** Test Cases ***
User can search product
    [Documentation]         The user can search laptop product
    [Tags]                  SearchProduct       DemoWebShop

    DemoVariables_gui.Search For Products
    DemoVariables_gui.Select Product From Search Results

User add a product to cart in the DemoWebShop
    [Documentation]         The user add laptop product
    [Tags]                  AddProduct      DemoWebShop

    DemoVariables_gui.Search For Products
    DemoVariables_gui.Select Product From Search Results
    DemoVariables_gui.Add Product To Cart

User add a product to cart successfull in the DemoWebShop
    [Documentation]         The user add laptop product
    [Tags]                  AddProductSuccessful      DemoWebShop

    DemoVariables_gui.Search For Products
    DemoVariables_gui.Select Product From Search Results
    DemoVariables_gui.Add Product To Cart
    DemoVariables_gui.Check The Cart