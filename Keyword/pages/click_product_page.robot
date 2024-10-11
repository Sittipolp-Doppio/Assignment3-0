*** Keywords ***
Click product
    [Arguments]    ${index}
    ${product_name}=    Set Variable    ${Tc_001.item1}
    ${locator}=    String.Replace String   ${product}    {product_name}    ${product_name}
    common.Tap when ready    ${locator}