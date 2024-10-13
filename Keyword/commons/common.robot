*** Settings ***
Library    AppiumLibrary
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
    [Arguments]    ${locator}    ${number}
    AppiumLibrary.Wait until element is visible    ${locator}    ${set.waittime}
    ${item_text}=   AppiumLibrary.Get text    ${locator}
    BuiltIn.Should match regexp    ${item_text}    ^${number}.*

Open test application
    [Documentation]    เปิดแอปพลิเคชันทดสอบบนอุปกรณ์ iOS และ Android
    BuiltIn.Run Keyword If    '${PLATFORM}' == 'android'    Open android application
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

Open iOS Application
    AppiumLibrary.Open Application
    ...    remote_url=${devices.remote_url} 
    ...    deviceName=${devices.device_name}
    ...    platformVersion=${devices.platform_version}
    ...    platformName=${devices.platform_name}
    ...    bundleId=${devices.bundle_id}
    ...    automationName=${devices.automation_name}
    ...    WebDriverAgentUrl=${devices.web_driver_agent}
    ...    noReset=${false}
Close app
    appiumLibrary.Close application
