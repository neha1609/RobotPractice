*** Settings ***
Resource    ../Resource/CommonFunctionality.robot

Suite Setup     LaunchApplication
Suite Teardown      CloseApp

*** Test Cases ***
Calling UserDefined Keyword
    Enter Username      Admin
    Enter Password      admin123
    Click On Login Button
    Sleep       2s
    Verify Home Page
    Click On Logout Link
    Sleep       2s