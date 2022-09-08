*** Settings ***
Documentation     Test if a user can input numbers into a textbox
Library     SeleniumLibrary
Resource    ../../Resources/Common.robot
Resource    ../../Resources/the_internet_herokuapp_User_Defined_Keywords.robot
Resource    ../../Resources/PageObjects/HomePage.robot
Resource    ../../Resources/PageObjects/inputsPage.robot
Resource    ../../Resources/PageObjects/context_menuPage..robot

Test Setup  Open the-internet.herokuapp.com in Browser
Test Teardown       Close the-internet.herokuapp.com Browser Window

*** Variables ***

*** Test Cases ***
Verify that a user can input numbers into a textbox
    [documentation]     as a user I want to be able to input numbers into a textbox
    [tags]      Regression

    Verify Correct Home Page of the-internet.herokuapp.com
    Click Inputs
    Page shoudld contain words Inputs
    Add Numbers Into TextBox
    Press Up Key To Increment


*** Keywords ***
