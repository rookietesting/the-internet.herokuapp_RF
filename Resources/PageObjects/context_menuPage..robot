*** Settings ***
Library     SeleniumLibrary
Library     Browser

*** Keywords ***
Page shoudld contain words Context Menu
    Page Should Contain    Context Menu
Right Click Context Menu Area
    Open Context Menu    xpath=//div[@class='example']/div[@id='hot-spot']
Page Alert Should Be Present
    Alert Should Be Present     You selected a context menu


