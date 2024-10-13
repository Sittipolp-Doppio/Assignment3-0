*** Keywords ***
Delete product
    [Arguments]    ${number}
    WHILE    '${number}' != '0'
        common.Get text and regexp when ready   ${item}    ${number}
        Run Keyword If    '${number}' != '0'    common.Tap when ready    ${delete}
    END
