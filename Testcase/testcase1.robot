*** Settings ***
Library     AppiumLibrary
Resource    ../Resource/import.robot

*** Test Cases ***
App Test
    open_app_page.Open Test Application
    click_product_page.Click product
    add_product_features.Add Product To Cart
    verify_cart_page.Verify Cart Has 1 Item