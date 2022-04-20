*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Test Cases ***
Verify that user is able to login with valid credentials
    [Tags]    DEBUG
    open browser        https://opensource-demo.orangehrmlive.com/index.php/auth/login      chrome
    input text      id=txtUsername      Admin
    input text      id=txtPassword      admin123
    click button        id=btnLogin
    page should contain link       Dashboard

Mouse over over Admin->User Management->Users
    mouse over      link=Admin
    mouse over      link=User Management
    click link      link=Users
    page should contain button  id=btnAdd
    Sleep       3s

Logout from Application
    click element       id=welcome
    Sleep       2s
    click link      link=Logout
    page should contain link        Forgot your password?

Close Browser
    close browser

