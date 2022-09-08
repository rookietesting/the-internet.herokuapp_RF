*** Settings ***
Documentation     Test if a user can check and uncheck checkboxes
Library     SeleniumLibrary
Resource    ../../Resources/Common.robot
Resource    ../../Resources/the_internet_herokuapp_User_Defined_Keywords.robot
Resource    ../../Resources/PageObjects/HomePage.robot
Resource    ../../Resources/PageObjects/checkboxesPage.robot

Test Setup  Open the-internet.herokuapp.com in Browser
Test Teardown       Close the-internet.herokuapp.com Browser Window

*** Variables ***

*** Test Cases ***
Verify that a user can select or unselect a checkbox on the page
    [documentation]     as a user I want to be able check and uncheck checkboxes
    [tags]      Regression

    Verify Correct Home Page of the-internet.herokuapp.com
    Click Checkboxes
    Click First Checkbox
    Is First Checkbox Selected
    UnClick Second Checkbox
    Is Second Checkbox Selected


*** Keywords ***
