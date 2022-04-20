*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Test Cases ***
Test title
    [Tags]    DEBUG
    open browser        https://jqueryui.com/resources/demos/droppable/default.html      chrome
    drag and drop       id=draggable        id=droppable
    close browser
