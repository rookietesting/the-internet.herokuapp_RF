*** Settings ***
Library     SeleniumLibrary

*** Variables ***
@{credentials}  tomsmith    SuperSecretPassword!
*** Keywords ***
Page shoudld contain words Login Page
    Page Should Contain    Login Page
Page shoudld contain words You logged out of the secure area!
    Page Should Contain    You logged out of the secure area!
Add Username Into TextBox
    Input Text    id:username    ${credentials}[0]
Add Password Into TextBox
    Input Text    id:password    ${credentials}[1]
Click Login Button
    Click Button    class:radius