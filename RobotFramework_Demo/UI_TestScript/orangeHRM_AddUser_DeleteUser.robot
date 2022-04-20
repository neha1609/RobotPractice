*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Library     String

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

Add User Scenario
    ${random_num} =     Generate Random String
    ${empname}=     Catenate    SEPARATOR=    Abhi    ${random_num}
    Log to Console      ${empname}

    click button        id=btnAdd
    Select From List By Index  id:systemUser_userType  0
    input text      id=systemUser_employeeName_empName      Fiona Grace
    input text      id=systemUser_userName      ${empname}
    input text      id=systemUser_password      admin123
    input text      id=systemUser_confirmPassword      admin123
    click button        id=btnSave
    sleep       3s
    page should contain link        ${empname}
    Sleep       3s
    click element       xpath://a[normalize-space()='${empname}']//parent::td/../td/input
    
Logout from Application
    click element       id=welcome
    Sleep       2s
    click link      link=Logout
    page should contain link        Forgot your password?

Close Browser
    close browser

