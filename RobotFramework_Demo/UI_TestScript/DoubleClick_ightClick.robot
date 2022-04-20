*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Test Cases ***
Double_Click_Example
    Open Browser    https://demo.guru99.com/test/simple_context_menu.html    chrome
    Double Click Element    xpath=//*[@id="authentication"]/button

Handle_Alert_Example
    Sleep    2s
    Alert Should Be Present     You double clicked me.. Thank You..     ACCEPT
    Sleep    2s
Right_Click_Example
    Sleep    2s
    Open Context Menu     xpath=//span[@class='context-menu-one btn btn-neutral']
    Sleep    2s
    Click Element       xpath=//span[normalize-space()='Edit']
    Sleep    2s
        Alert Should Be Present     clicked: edit     ACCEPT
        Sleep    2s
    Close Browser
