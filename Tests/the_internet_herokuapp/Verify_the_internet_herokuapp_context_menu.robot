*** Settings ***
Documentation     Test if a user can right click the context menu
Library     SeleniumLibrary
Resource    ../../Resources/Common.robot
Resource    ../../Resources/the_internet_herokuapp_User_Defined_Keywords.robot
Resource    ../../Resources/PageObjects/HomePage.robot
Resource    ../../Resources/PageObjects/context_menuPage..robot

Test Setup  Open the-internet.herokuapp.com in Browser
Test Teardown       Close the-internet.herokuapp.com Browser Window

*** Variables ***

*** Test Cases ***
Verify that a user can right click the context menu
    [documentation]     as a user I want to be able to right click the context menu
    [tags]      Regression

    Verify Correct Home Page of the-internet.herokuapp.com
    Page shoudld contain words Context Menu
    Click Context Menu
    Right Click Context Menu Area
    Page Alert Should Be Present

*** Keywords ***
