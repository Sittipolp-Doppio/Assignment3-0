*** Keywords ***
Verify Cart Has 1 Item
    Wait Until Element Is Visible    ${item}    5s
    ${item_text}=    Get Text    ${item}
    Should Match Regexp    ${item_text}    ^1.*

