*** Variables ***
	
${remote_url}    http://localhost:4723/wd/hub
${device_name}   TestDevice
${platform_version}  11.0
${platform_name}     Android
${app_package}   com.saucelabs.mydemoapp.android
${app_activity}  com.saucelabs.mydemoapp.android.view.activities.SplashActivity

${product}       xpath=(//android.widget.ImageView[@content-desc="Product Image"])[1]
${cart}          xpath=//android.widget.ImageView[@content-desc="Displays number of items in your cart"]
${add_cart}      xpath=//android.widget.Button[@content-desc="Tap to add product to cart"]
${item}          xpath=//android.widget.TextView[@resource-id="com.saucelabs.mydemoapp.android:id/itemsTV"]