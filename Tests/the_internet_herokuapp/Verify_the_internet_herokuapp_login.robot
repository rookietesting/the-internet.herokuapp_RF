*** Settings ***
Documentation     Test if a user can use form authentication
Library     SeleniumLibrary
Resource    ../../Resources/Common.robot
Resource    ../../Resources/the_internet_herokuapp_User_Defined_Keywords.robot
Resource    ../../Resources/PageObjects/HomePage.robot
Resource    ../../Resources/PageObjects/loginPage.robot
Resource    ../../Resources/PageObjects/logoutPage.robot

Test Setup  Open the-internet.herokuapp.com in Browser
Test Teardown       Close the-internet.herokuapp.com Browser Window

*** Variables ***

*** Test Cases ***
Verify that a user can use form authentication
    [documentation]     as a user I want to be able to use form authentication
    [tags]      Regression

    Verify Correct Home Page of the-internet.herokuapp.com
    Click Form Authentication
    Add Username Into TextBox
    Add Password Into TextBox
    Click Login Button
    Page shoudld contain words Secure Area
    Success login Message
    Click Logout Button
    Page shoudld contain words You logged out of the secure area!



*** Keywords ***
