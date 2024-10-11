*** Settings ***
Library     AppiumLibrary
Resource    ${CURDIR}../../Resource/import.robot
Suite Setup    common.Open test application
Suite Teardown    common.Close app
*** Test Cases ***
tc0-App test
    click_product_page.Click product
    add_product_features.Add Product To Cart
    verify_cart_page.Verify cart has 1 item
