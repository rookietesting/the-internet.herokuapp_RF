*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Page shoudld contain words Add/Remove Elements
    Page Should Contain    Add/Remove Elements 
Add Element
    Click Button    Add Element
Is Element Visable
    Wait Until Element Is Visible    class:added-manually
Remove Element
    Click Button    Delete
Is Element not Visable
    Wait Until Page Does Not Contain Element    class:added-manually

