*** Keywords ***
Delete product
    [Arguments]    ${number_loop}
    FOR    ${i}    IN RANGE    ${number_loop}
        common.Tap when ready    ${cart_locators.delete}
    END