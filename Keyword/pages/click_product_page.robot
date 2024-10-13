*** Keywords ***
Click product
    [Arguments]    ${item}
    ${product_name}=    BuiltIn.Set variable    ${item}
    ${locator}=    String.Replace string    ${product_locators.product}    {product_name}    ${product_name}
    common.Scroll down to element    ${product_locators.title_product}    ${locator}
    common.Tap when ready    ${locator}
    