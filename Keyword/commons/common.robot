*** Keywords ***
Tap when ready
    [Arguments]    ${locator}
    AppiumLibrary.Wait until element is visible    ${locator}   ${set.waittime}
    AppiumLibrary.Click element    ${locator}

Scroll down to element
    [Arguments]    ${locator}    ${locator1}
    AppiumLibrary.Wait until element is visible    ${locator1}    ${set.waittime}
    AppiumLibrary.Scroll    ${locator}    ${locator1}
    
    
Get text and regexp when ready
    [Arguments]    ${locator}
    AppiumLibrary.Wait until element is visible    ${locator}    ${set.waittime}
    Log To Console    c=${locator}
    ${item_text}=   AppiumLibrary.Get text    ${locator}
    Log To Console    item=${item_text}
    BuiltIn.Should match regexp    ${item_text}    ^1.*

Close app
    AppiumLibrary.Close application

Open test application
    [Documentation]    เปิดแอปพลิเคชันทดสอบบนอุปกรณ์ iOS และ Android
    Run Keyword If    '${PLATFORM}' == 'android'    Open android application
    ...    ELSE IF    '${PLATFORM}' == 'ios'    Open ios application
    ...    ELSE    Fail    Invalid platform: ${PLATFORM}

Open android application
    AppiumLibrary.Open application
    ...    ${devices.remote_url}
    ...    deviceName=${devices.device_name}
    ...    platformVersion=${devices.platform_version}
    ...    platformName=${devices.platform_name}
    ...    appPackage=${devices.app_package}
    ...    appActivity=${devices.app_activity}

Open ios application
    AppiumLibrary.Open application
    ...    ${devices.remote_url}
    ...    deviceName=${devices.device_name}
    ...    platformVersion=${devices.platform_version}
    ...    platformName=${devices.platform_name}
    ...    bundleId=${devices.bundle_id}
    ...    automationName=${devices.automation_name}
    ...    WebDriverAgentUrl=${devices.web_driver_agent}
    ...    noReset=${devices.no_reset}

