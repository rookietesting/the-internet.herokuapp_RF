*** Settings ***
Documentation     Test if a user can add or remove items from an page
Library     SeleniumLibrary
Resource    ../../Resources/Common.robot
Resource    ../../Resources/the_internet_herokuapp_User_Defined_Keywords.robot
Resource    ../../Resources/PageObjects/HomePage.robot
Resource    ../../Resources/PageObjects/add_remove_elementsPage.robot

Test Setup  Open the-internet.herokuapp.com in Browser
Test Teardown       Close the-internet.herokuapp.com Browser Window

*** Variables ***

*** Test Cases ***
Verify that a user can add elements to a page
    [documentation]     as a user I want to be able to add or remove elements from a page
    [tags]      Regression

    Verify Correct Home Page of the-internet.herokuapp.com
    Click Add/Remove Elements Link
    Page shoudld contain words Add/Remove Elements
    Add Element
    Is Element Visable
    Remove Element
    Is Element not Visable


*** Keywords ***
