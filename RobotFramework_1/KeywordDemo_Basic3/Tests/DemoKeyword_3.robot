*** Settings ***
Documentation       Break Up Script Into Keyword Example
Library             SeleniumLibrary

Resource            ../Resources/Common.robot       # for setup & teardown
Resource            ../Resources/DemoWebShop_gui.robot      # for lower level keywords in test cases

Test Setup          Common.Begin Web Test
Test Teardown       Common.End Web Test

*** Test Cases ***
User can search product
    [Documentation]         The user can search laptop product
    [Tags]                  SearchProduct       DemoWebShop

    DemoWebShop_gui.Search For Products
    DemoWebShop_gui.Select Product From Search Results

User add a product to cart successfull in the DemoWebShop
    [Documentation]         The user add laptop product
    [Tags]                  AddProduct      DemoWebShop

    DemoWebShop_gui.Search For Products
    DemoWebShop_gui.Select Product From Search Results
    DemoWebShop_gui.Add Product To Cart
    DemoWebShop_gui.Check The Cart
