*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Open the-internet.herokuapp.com in Browser
    SeleniumLibrary.Open Browser    https://the-internet.herokuapp.com/     Chrome
Close the-internet.herokuapp.com Browser Window
    SeleniumLibrary.Close Browser