*** Settings ***
Documentation       Break Up Script Into Keyword
Library             SeleniumLibrary

*** Test Cases ***
User add a product to cart successfull in the DemoWebShop
    [Documentation]         The user add laptop product
    [Tags]                  AddProduct      DemoWebShop

    Start The Web Test
    Search For Products
    Select Product From Search Results
    Add Product To Cart
    Check The Cart
    End Web Test


*** Keywords ***
Start The Web Test
    open browser                    about:blank                                 chrome
    maximize browser window

Search For Products
    go to                           https://demowebshop.tricentis.com/
    wait until page contains        Categories

Select Product From Search Results
    input text                      id=small-searchterms                        laptop
    click button                    Search
    wait until page contains        Search keyword:

    click link                      /141-inch-laptop
    wait until page contains        Unique Asian-influenced imprint wraps the laptop both inside and out

Add Product To Cart
    click button                    id=add-to-cart-button-31
    wait until page contains        The product has been added to your shopping cart

Check The Cart
    click link                      /cart
    wait until page contains        Shopping cart
    wait until page contains        14.1-inch Laptop

End Web Test
    close browser



