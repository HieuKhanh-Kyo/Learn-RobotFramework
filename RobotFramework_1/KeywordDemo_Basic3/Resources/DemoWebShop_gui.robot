*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/PO/LandingPage.robot

*** Keywords ***
Search For Products
    LandingPage.Load
    LandingPage.Verify Page Loaded

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

