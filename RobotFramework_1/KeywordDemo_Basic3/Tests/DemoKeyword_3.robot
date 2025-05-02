*** Settings ***
Documentation       Break Up Script Into Keyword Example
Library             SeleniumLibrary

Resource            Study_RobotFramework/RobotFramework_1/KeywordDemo_Basic3/Resources/DemoWebShop_gui.robot
Resource            Study_RobotFramework/RobotFramework_1/KeywordDemo_Basic3/Resources/Common.robot

Suite Setup         Insert Testing Data
Test Setup          Common.Begin Web Test
Test Setup          Common.End Web Test
Suite Teardown      Cleanup Testing Data

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
