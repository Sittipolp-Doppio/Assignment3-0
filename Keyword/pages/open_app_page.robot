*** Keywords ***
Open Test Application
    [Documentation]    เปิดแอปพลิเคชันทดสอบบนอุปกรณ์ iOS และ Android
    Run Keyword If    '${PLATFORM}' == 'android'    Open Android Application
    ...    ELSE IF    '${PLATFORM}' == 'ios'    Open iOS Application
    ...    ELSE    Fail    Invalid platform: ${PLATFORM}

Open Android Application
    AppiumLibrary.Open Application
    ...    ${devices.remote_url}
    ...    deviceName=${devices.device_name}
    ...    platformVersion=${devices.platform_version}
    ...    platformName=${devices.platform_name}
    ...    appPackage=${devices.app_package}
    ...    appActivity=${devices.app_activity}

Open iOS Application
    AppiumLibrary.Open Application
    ...    ${devices.remote_url}
    ...    deviceName=${devices.device_name}
    ...    platformVersion=${devices.platform_version}
    ...    platformName=${devices.platform_name}
    ...    bundleId=${devices.bundle_id}
    ...    automationName=${devices.automation_name}
    ...    WebDriverAgentUrl=${devices.web_driver_agent}
