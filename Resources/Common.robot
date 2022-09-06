*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Open the-internet.herokuapp.com in Browser
    Open Browser    https://the-internet.herokuapp.com/     Chrome
Close the-internet.herokuapp.com Browser Window
    Close Browser