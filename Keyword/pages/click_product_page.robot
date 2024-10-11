*** Keywords ***
Click product
    ${product_name}=    Set Variable    ${Tc_001.item1}
    ${locator}=    String.Replace String   ${product}    {product_name}    ${product_name}
    common.Scroll down to element    ${first_product}    ${locator}
    common.Tap when ready    ${locator}
    