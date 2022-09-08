*** Settings ***
Library     SeleniumLibrary
Library     Browser
*** Keywords ***
Page shoudld contain words Secure Area
    Page Should Contain    Secure Area
Click Logout Button
    Wait Until Page Contains Element    xpath://i[contains(text(),'Logout')]
    SeleniumLibrary.Press Keys  None  TAB
    SeleniumLibrary.Press Keys  None  TAB
    SeleniumLibrary.Press Keys  None  TAB
    SeleniumLibrary.Press Keys  None  RETURN
Success login Message
    Page Should Contain    You logged into a secure area!
    Element Should Be Visible    class:flash