*** Settings ***
Resource    ${CURDIR}../../Resource/import.robot
Suite Setup    common.Open test application
Suite Teardown    common.Close app
*** Test Cases ***
tc0-App test
    click_product_page.Click product    ${Tc_001.item2}
    add_product_features.Add Product To Cart
    verify_cart_page.Verify cart has 1 item    ${count.count_1}
    delete_product_page.Delete product     ${count.count_1}