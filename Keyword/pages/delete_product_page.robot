*** Settings ***
Resource    ../commons/common.robot
*** Keywords ***
Delete product
    [Arguments]    ${number_loop}
    FOR    ${i}    IN RANGE    ${number_loop}
        common.Tap when ready    ${delete}
    END