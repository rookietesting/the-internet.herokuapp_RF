*** Settings ***
Documentation     Test the landing page of the_internet_herokuapp
Library     SeleniumLibrary
Resource    ../../Resources/Common.robot
Resource    ../../Resources/the_internet_herokuapp_User_Defined_Keywords.robot

Test Setup  Open the-internet.herokuapp.com in Browser
Test Teardown       Close the-internet.herokuapp.com Browser Window

*** Variables ***

*** Test Cases ***
Does "Welcome to the-internet" display on page
    [documentation]     Test if we are on the correct page at the_internet_herokuapp
    [tags]      Regression

    Verify Correct Home Page of the-internet.herokuapp.com


*** Keywords ***
