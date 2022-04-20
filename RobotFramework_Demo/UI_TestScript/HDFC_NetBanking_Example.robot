*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Test Cases ***
Verify that user is able to enter customerid
    [Tags]    DEBUG
    open browser        https://netbanking.hdfcbank.com/netbanking/      chrome
    select frame        name=login_page
    input text          name=fldLoginUserId      1000
    Sleep       2s
    click element        xpath=//a[@class='btn btn-primary login-btn']
    Sleep       2s
    page should contain textfield   id=fldPasswordDispId

Close Browser
    close browser

