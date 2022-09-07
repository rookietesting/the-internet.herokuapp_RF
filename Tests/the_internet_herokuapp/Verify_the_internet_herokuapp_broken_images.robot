*** Settings ***
Documentation     Test if broken images are on the page
Library     SeleniumLibrary
Resource    ../../Resources/Common.robot
Resource    ../../Resources/the_internet_herokuapp_User_Defined_Keywords.robot
Resource    ../../Resources/PageObjects/HomePage.robot
Resource    ../../Resources/PageObjects/broken_imagesPage.robot

Test Setup  Open the-internet.herokuapp.com in Browser
Test Teardown       Close the-internet.herokuapp.com Browser Window

*** Variables ***

*** Test Cases ***
Verify that a user sees any broken images.
    [documentation]     as a user I want to be able to know if there are any broken images on the website
    [tags]      Regression

    Verify Correct Home Page of the-internet.herokuapp.com
    Click Broken Images
    Get browser logs and check if images are not found (Broken)


*** Keywords ***
