*** Keywords ***
Tap when ready
    [Arguments]    ${locator}
    AppiumLibrary.Wait Until Element Is Visible    ${locator}   10s
    AppiumLibrary.Click Element    ${locator}
