*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${phone_number}  1234567890
*** Keywords ***
Page shoudld contain words Inputs
    Page Should Contain    Inputs
Add Numbers Into TextBox
    Input Text    xpath://div[@class='example']/input    ${phone_number}
Press Up Key To Increment
    SeleniumLibrary.Press Keys  xpath://div[@class='example']/input  ARROW_DOWN