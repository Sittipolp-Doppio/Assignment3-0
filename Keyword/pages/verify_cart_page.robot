*** Keywords ***
Verify cart has 1 item
    [Arguments]    ${number}
    common.Get text and regexp when ready   ${item}    ${number}

