*** Settings ***
Library    AppiumLibrary
Library    String

Variables    ${CURDIR}../../Resource/setting/${platform}.yaml


Resource     ${CURDIR}../../Resource/locators/${platform}/locators_all.robot


Resource     ${CURDIR}../../Keyword/commons/common.robot

Resource     ${CURDIR}../../Keyword/features/add_product_features.robot

Resource     ${CURDIR}../../Keyword/pages/add_product_page.robot
Resource     ${CURDIR}../../Keyword/pages/click_product_page.robot
Resource     ${CURDIR}../../Keyword/pages/open_app_page.robot
Resource     ${CURDIR}../../Keyword/pages/verify_cart_page.robot


