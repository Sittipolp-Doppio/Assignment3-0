*** Settings ***
Library    AppiumLibrary
Library    DebugLibrary
Library    String
#setting
Variables    ${CURDIR}../../Resource/setting/${platform}.yaml

#testdata
Variables    ${CURDIR}../../Resource/testdata/${platform}/data.yaml

#locator
Resource     ${CURDIR}../../Resource/locators/${platform}/cart_locators.robot
Resource     ${CURDIR}../../Resource/locators/${platform}/detail_locators.robot
Resource     ${CURDIR}../../Resource/locators/${platform}/product_locators.robot

#common
Resource     ${CURDIR}../../Keyword/commons/common.robot

#features
Resource     ${CURDIR}../../Keyword/features/add_product_features.robot

#page
Resource     ${CURDIR}../../Keyword/pages/add_product_page.robot
Resource     ${CURDIR}../../Keyword/pages/click_product_page.robot
Resource     ${CURDIR}../../Keyword/pages/verify_cart_page.robot
Resource     ${CURDIR}../../Keyword/pages/delete_product_page.robot

